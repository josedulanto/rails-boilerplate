require 'rails_helper'

RSpec.describe StaticController, type: :controller do
  
  it 'should load the home view whe visiting the website' do
    skip
    get :index
    expect(response).to be_ok
  end

end
