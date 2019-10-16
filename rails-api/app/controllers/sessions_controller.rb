class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by_id params[:user_id]
        if user && user&.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Logged in"
        else
            flash[:alert] = "Wrong username or password"
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path
    end

end
