class ApiController < ApplicationController
 
  skip_before_action :verify_authenticity_token

  private
  def authenticated?
    authenticate_or_request_with_http_basic {|email, password_digest| User.where( email: email, password_digest: password_digest).present? }
  end

  def authenticated_for_list?
  	authenticate_or_request_with_http_basic { |email, password_digest|
  	  @current_user = User.where( email: email, password_digest: password_digest)
  	  @current_user.present? && (@current_user[0] == User.find(params[:user_id])) 
    }
  end

  def authenticated_for_item?
  	authenticate_or_request_with_http_basic { |email, password_digest|
  	  @current_user = User.where( email: email, password_digest: password_digest)
  	  @current_user.present? && (@current_user[0] == List.find(params[:list_id]).user) 
    }
  end
 
end