module AuthorizationHelper

  def authorization(_user)
    raise 'implement token generation'
    # authentication :apiKey, token, name: 'Authorization', in: 'header'
  end

end
