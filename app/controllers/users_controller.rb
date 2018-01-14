class UsersController < ApplicationController
    def show 
      @user = User.find(params[:id])
    end
    
    def index
      @users = User.all 
      @reviews = Review.all
    end 
end
