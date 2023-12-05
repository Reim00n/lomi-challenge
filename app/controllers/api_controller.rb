class ApiController < ApplicationController
  respond_to :json
  acts_as_token_authentication_handler_for User, fallback: :exception
  # skip_before_action :verify_authenticity_token
end