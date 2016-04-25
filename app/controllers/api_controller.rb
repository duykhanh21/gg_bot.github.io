class ApiController < ApplicationController
  def webhook
    if params['hub.verify_token'] === '123456'
      render json: params['hub.challenge']
    else
      render html: '<strong>Wrong</strong>'.html_safe
    end
  end
end
