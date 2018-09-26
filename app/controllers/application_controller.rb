class ApplicationController < ActionController::API

  before_action :authenticate

  private

  def my_current_user
    @current_user ||= authenticate
  end

  def authenticate
    token = request.headers['Authorization'].split(' ')[1]
    decoded_payload = decode_token(token)
    @current_user = User.find(decoded_payload['user_id'])
  end

  def generate_token(user)
    payload = { user_id: user.id }
    JWT.encode payload, hmac_secret, 'HS256'
  end

  def decode_token(token)
    decoded = JWT.decode token, hmac_secret, true, { algorithm: 'HS256'}
    decoded[0]
  end

  def hmac_secret
    'super_secret'
  end

end
