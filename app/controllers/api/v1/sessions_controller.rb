class Api::V1::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token
  skip_before_action :require_no_authentication

  respond_to :json

  def create
    resource = User.find_for_database_authentication(email: params[:email])
    return invalid_login_attempt unless resource

    if resource.valid_password?(params[:password])
      sign_in resource
        render json: LoginSerializer.new(resource), status: :created
        return
    end
    invalid_login_attempt
  end

  def destroy
    resource = current_user
    if resource
      resource.authentication_token = nil
      resource.save
      sign_out resource
      render json: {}, status: 204
    else
      render json: {}, status: 401
    end
  end

  protected

  def json_result(resource)
    {
      auth_token: resource.authentication_token,
      user: {
        id: resource.to_param,
        email: resource.email,
        nombre: resource.nombre
      }
    }
  end

  def invalid_login_attempt
    render json: { message: 'Error with your login or password' }, status: 401
  end
end
