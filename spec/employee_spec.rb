require 'spec_helper'
require 'rails_helper'
require 'employees_controller'

RSpec.describe EmployeesController, :type => :controller do



  # context 'when a user is not logged in' do


  #   describe 'GET#index' do
  #     it 'returns 401 status' do
  #       get :index, {}, { id: nil }
  #       expect(response).to have_http_status(401)
  #     end
  #   end


  #   describe 'POST#create' do
  #     it 'returns 401 status' do
  #       post :create, {}, { id: nil }
  #       expect(response).to have_http_status(401)
  #     end
  #   end


  #   describe 'GET#new' do
  #     it 'returns 401 status' do
  #       get :new, {}, { id: nil }
  #       expect(response).to have_http_status(401)
  #     end
  #   end


  #   describe 'GET#edit' do
  #     it 'returns 401 status' do
  #       get :edit, {}, { id: nil }
  #       expect(response).to have_http_status(401)
  #     end
  #   end


  #   describe 'POST#update' do
  #     it 'returns 401 status' do
  #       post :update, {}, { id: nil }
  #       expect(response).to have_http_status(401)
  #     end
  #   end


  #   describe 'GET#show' do
  #     it 'returns 401 status' do
  #       get :show, {}, { id: nil }
  #       expect(response).to have_http_status(401)
  #     end
  #   end


  #   describe 'POST#destroy' do
  #     it 'returns 401 status' do
  #       post :destroy, {}, { id: nil }
  #       expect(response).to have_http_status(401)
  #     end
  #   end


  # end



  context 'when a user is logged in' do

    describe 'GET#index' do
      it 'returns 200 status' do
        get :index
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      # context 'when a user is not an admin' do

      #   it 'returns 401 status' do
      #     non_admin = FactoryGirl.create(:employee, admin: false)
      #     get :index, {}, { id: non_admin.id }
      #     expect(response).to have_http_status(401)
      #   end
      # end

      context 'when a user is an admin' do
        let (:admin) { Employee.create({ nickname: "thomas the devil", admin: true })}
        let (:not_an_admin) { Employee.create({ nickname: "susan the knife-thrower", admin: false })}

        it 'returns 200 status' do
          expect(response).to be_success
          expect(response).to have_http_status(200)
        end
        it 'renders all users' do
          get :index, {}, { id: admin.id }
          expect(response.body).to include("thomas the devil")
          expect(response.body).to include("susan the knife-thrower")
        end
      end

    end


    describe 'employees#create' do
      it 'returns 200 status' do
        post :create
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      it 'checks session' do
      end

      context 'a user is not an admin' do

      end

      context 'a user is an admin' do
      end

    end


    describe 'employees#new' do
      it 'returns 200 status' do
        get :show
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      # it 'checks session' do
      # end

      # context 'a user is not an admin' do

      # end

      context 'a user is an admin' do

      end

    end


    describe 'employees#edit' do
      it 'returns 200 status' do
        get :edit
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      it 'checks session' do
      end

      context 'a user is not an admin' do

      end

      context 'a user is an admin' do
      end

    end


    describe 'employees#update' do
      it 'returns 200 status' do
        post :update
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      it 'checks session' do
      end

      context 'a user is not an admin' do

      end

      context 'a user is an admin' do
      end

    end


    describe 'employees#show' do
      it 'returns 200 status' do
        get :show
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      it 'checks session' do
      end

      context 'a user is not an admin' do

      end

      context 'a user is an admin' do
      end

    end


    describe 'employees#destroy' do
      it 'returns 200 status' do
        post :destroy
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      it 'checks session' do
      end

      context 'a user is not an admin' do

      end

      context 'a user is an admin' do
      end

    end





  end



end
