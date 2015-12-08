module Api
  class UsersController < ApplicationController
    
    respond_to :json
    
    def show
      # render json: User.all
      @users = User.all
      
      respond_to do |format|
        # format.xml  { render_for_api :name_only, :xml  => @user }
        format.json { render_for_api :name_only, :json => @users, :root => :users }
      end
    end
    
  end
end
