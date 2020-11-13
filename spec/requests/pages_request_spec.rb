require 'rails_helper'

RSpec.describe "Pages", type: :request do
  it 'renders landing page' do
    get "/"
    expect(response).to redirect_to('/users/sign_in')
  end

  it 'renders landing page after login' do
    sign_in User.first
    get "/"
    expect(response).to be_successful
  end
end
