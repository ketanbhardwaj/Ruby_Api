module Api
  class UsersController < ApplicationController
    
    respond_to :json
    require "rubygems"
    require "json"
    
    def show
      # render json: User.all
      # @users = User.find(3)
      # @orders = @users.order
      
      # render json: @orders
      
      @no = JSON.parse(GlobalConstants::INVALID_PARAMETER)
      
      begin
        @companies = User.includes(:order).find(params[:id])
        respond_to do |format|
          # format.xml  { render_for_api :name_only, :xml  => @user }
          # format.json { render_for_api :public, :json => @users, :root => :users }
          format.json { render_for_api :public, json: @companies, :root => :users }
          
        end
        
      rescue ActiveRecord::RecordNotFound
        render json: @no
      end
      
    end
    
    def new 
      @no = JSON.parse(GlobalConstants::PARAMETER_MISSING)
      # @chak = User.new(user_params)
      # if @chak.save
        # render json: User.all
      # else
        # render json: Order.all
      # end
      
      begin
        @new_user = User.create(username: params.require(:username), password: params.require(:password), name: params[:name], email: params.require(:email), gender: params[:gender], phone: params[:phone])
        
        respond_to do |format|
          format.json { render_for_api :profile, json: @new_user, :root => :user }
        end
        
      rescue ActionController::ParameterMissing
        render json: @no
        # respond_to do |format|
          # format.json { render_for_api :all, json: @no, :root => :failure }
        # end
      end
      
    end
    
    private
    def user_params
      params.require(:email).permit(:name, :gender, :phone)
    end
    
  end
end
