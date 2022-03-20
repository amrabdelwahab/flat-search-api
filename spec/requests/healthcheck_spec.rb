# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Get /healthcheck', type: :request do
  it 'returns a successful response with ok in the body', :aggregate_failures do
    get '/healthcheck'

    expect(response).to have_http_status :ok
    expect(response.body).to eq 'ok'
  end
end
