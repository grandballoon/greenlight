class SessionsController < ApplicationController
 skip_before_action :authorized, only: [:new, :create]
 helper_method :destroy

 def new
   render :new
 end

 def create

   @producer = Producer.find_by(name: params[:name])

   if !!@producer && @producer.authenticate(params[:password])
     session[:logged_in_producer_id] = @producer.id
     flash[:notice] = "Login Successful!"
     redirect_to profile_path
   else
     flash[:notice] = "Invalid username or password"
     redirect_to new_session_path
   end
 end

 def destroy
   byebug
   session.delete(:logged_in_producer_id)
   flash[:notice] = "Logout successful"
   redirect_to new_session_path
 end


end
