class FurimasController < ApplicationController
  #before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  #before_action :set_furima, only: [:edit, :show]
  #before_action :move_to_index, except: [:index, :show]

  #def index
    #@furimas = Furima.includes(:user).order('created_at DESC')
  #end

 #def new
    #@furima = Furima.new
 #end

  #def show
    #@comment = Comment.new
   #@comments = @furima.comments
  #end

  #def destroy
    #if @furima.destroy
      #redirect_to root_path
    #else
      #redirect_to root_path
   # end
  #end

  #def create
    #@furima = Furima.new(furima_params)
    #if @furima.save
      #redirect_to root_path
   # else
      #render :new
   # end
  #end

  #def edit
   # @furima = Furima.find(params[:id])
   # unless user_signed_in? && current_user.id == @furima.user_id
    #  redirect_to action: :index
 #   end
 # end

#private

  #def set_furima
 #   @furima = Furima.find(params[:id])
 # end

 # def move_to_index
 #   unless user_signed_in?
 #     redirect_to action: :index
 #   end
#  end
#end
