require 'spec_helper'
require 'rails_helper'

describe 'employee routes' do

  describe 'employees#index' do
    it 'returns 200 status' do
      get '/employees'
      expect(last_response.status).to eq(200)
    end

    context 'a user is not an admin' do
    end

    context 'a user is an admin' do
    end

  end

  pending 'employees#create' do
    it 'returns 200 status' do
      post '/employees/new'
      expect(last_response.status).to eq(200)
    end

    it 'checks session' do
    end

    context 'a user is not an admin' do

    end

    context 'a user is an admin' do
    end

  end


  pending 'employees#new' do
    it 'returns 200 status' do
      expect(last_response.status).to eq(200)

    end

    it 'checks session' do
    end

    context 'a user is not an admin' do

    end

    context 'a user is an admin' do
    end

  end

  pending 'employees#edit' do
    it 'returns 200 status' do
      expect(last_response.status).to eq(200)

    end

    it 'checks session' do
    end

    context 'a user is not an admin' do

    end

    context 'a user is an admin' do
    end

  end


  pending 'employees#show' do
    it 'returns 200 status' do
      expect(last_response.status).to eq(200)

    end

    it 'checks session' do
    end

    context 'a user is not an admin' do

    end

    context 'a user is an admin' do
    end

  end


  pending 'employees#update' do
    it 'returns 200 status' do
      expect(last_response.status).to eq(200)

    end

    it 'checks session' do
    end

    context 'a user is not an admin' do

    end

    context 'a user is an admin' do
    end

  end

  pending 'employees#destroy' do
    it 'returns 200 status' do
      expect(last_response.status).to eq(200)

    end

    it 'checks session' do
    end

    context 'a user is not an admin' do

    end

    context 'a user is an admin' do
    end

  end




end
