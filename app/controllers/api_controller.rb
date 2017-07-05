 class ApiController < ApplicationController
 
   skip_before_action :verify_authenticity_token

   private
   def authenticated?
     authenticate_or_request_with_http_basic {|email, password_digest| User.where( email: email, password_digest: password_digest).present? }
   end
 
 end