class ApplicationController < ActionController::API

  def encode_token(payload)
    JWT.encode(payload, 'be3p_b0op ')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'be3p_b0op', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
end
