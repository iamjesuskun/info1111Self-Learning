class MainController < ApplicationController
    def index
        flash[:notice] = "Logged in succesfully"
        flash[:alert] = "Invalid Email or Password"
    end
    def search
    end
end