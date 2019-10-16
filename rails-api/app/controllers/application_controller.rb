class ApplicationController < ActionController::Base

    def current_user
        User.find_by(id: session[:user_id])
    end

    def user_signed_in?
        !current_user.nil?
    end

    helper_method :user_signed_in?

    private
    
    def authenticate_user!
        redirect_to "/login" unless user_signed_in? || ["/login", "/sign_up", "/sessions/new", "/sessions"].include?(request.path) 
    end
end
