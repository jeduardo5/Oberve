#require reauthentication on a per-request level. 
#This is probably the simplest way to ensure statelessness.
#
class ApplicationController < ApplicationController
 before_filter :parse_request, :authenticate_user_from_token!

    private
       def authenticate_user_from_token!
         if !@json['api_token']
           render nothing: true, status: :unauthorized
         else
           @user = nil
           User.find_each do |u|
             if Devise.secure_compare(u.api_token, @json['api_token'])
               @user = u
             end
           end
         end
       end

       def parse_request
         @json = JSON.parse(request.body.read)
       end
    end
