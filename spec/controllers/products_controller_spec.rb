require 'rails_helper'

describe ProductsController, type: :controller do

  before(:each) do
    @product = FactoryBot.create(:product)
    @user = FactoryBot.create(:user)
    @admin = FactoryBot.create(:adminuser)
  end

  describe 'GET #index' do
    it 'renders products index template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end
  

  describe 'GET #show' do
    it 'renders product page template' do
      get :show, params: { id: @product.id }
      expect(response).to be_ok
      expect(response).to render_template('show')
    end
  end

  describe 'GET #new' do

    context 'user not signed in' do
      it 'redirects to index' do
        get :new
        expect(response).to redirect_to(root_path)
      end
    end

    context 'user signed in' do
      before do
        sign_in @user
      end

      it 'redirects to index' do
        get :new
        expect(response).to redirect_to(root_path)
      end
    end

    context 'admin signed in' do
      before do
        sign_in @admin
      end

      it 'shows new product page' do
        get :new
        expect(response).to be_ok
        expect(response).to render_template('new')
      end
    end
  end

  describe 'GET #edit' do
    context 'user not signed in' do
      it 'redirects to index' do
        get :edit, params: { id: @product.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'user signed in' do
      before do
        sign_in @user
      end

      it 'redirects to index' do
        get :edit, params: { id: @product.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'admin signed in' do
      before do
        sign_in @admin
      end

      it 'shows edit product page' do
        get :edit, params: { id: @product.id }
        expect(response).to be_ok
        expect(response).to render_template('edit')
      end
    end
  end

  describe "POST #create" do
    it 'creates new product' do
      @product = FactoryBot.create(:product)
      expect(response).to be_successful
    end
  end

  describe 'DELETE #destroy' do

    context 'user not signed in' do
      it 'will not destroy a product' do
        delete :destroy, params: { id: @product.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'user signed in' do
      it 'will not destory a product' do
        sign_in @user
        delete :destroy, params: { id: @product.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'admin signed in' do
      it 'will destroy a product' do
        sign_in @admin
        delete :destroy, params: { id: @product.id }
        expect(response).to redirect_to(products_url)
      end
    end

  end

  describe 'PATCH #update' do
    it 'will update a product' do
      sign_in @admin
      patch :update, params: { id: @product.id, product: { description: "sooo coool!" } }
      @product.reload
      expect(@product.description).to eq "sooo coool!"
    end
  end

end