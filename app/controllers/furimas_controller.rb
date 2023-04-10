class FurimasController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  # :destroy
  before_action :set_furima, only: [:edit, :show, :update]
  #before_action :move_to_index, except: [:index, :show]

  def index
    @furimas = Furima.includes(:user).order('created_at DESC')
  end

 def new
 end

 def create
  if @furima.save
    redirect_to root_path
  else
    render :new
  end
end

  def show
  end

  def update
    if @furima.update(furima_params)
      redirect_to furimas_path(@furima)
    else
      render :edit
    end
  end

  def edit
    unless user_signed_in? && current_user.id == @furima.user_id
     redirect_to action: :index
    end
  end


  #def destroy
   # if @furima.destroy
    #  redirect_to root_path
    #else
     # redirect_to root_path
    #end
  #end

  


    private

    def set_furima
      @furima = Furima.find(params[:id])
     end

    def furima_params
      params.require(:furima).permit(:image,:price, :item, :item_text, :category_id, :condition_id, :fee_id, :prefecture_id, :scheduled_delivery_id, ).merge(user_id: current_user.id)
  
    end
  end
