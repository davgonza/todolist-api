class JsonWebToken
  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, TodosApi::Application.credentials.secret_key_base)
  end

  def self.decode(token)
    body = JWT.decode(token, TodosApi::Application.credentials.secret_key_base)[0]
    HashWithIndifferentAccess.new body
  rescue JWT::DecodeError => e
    raise ExceptionHandler::InvalidToken, e.message
  end
end
