class StandartsController < ApplicationController

 
 before_filter only: [:new, :create]

  def index
    @standarts = Standart.all
  end

  def show
    @standart = Standart.find(params[:id])
  end

  def new
  end

  def create
    @standart = Standart.new(standart_params)
    
    if @standart.save
      redirect_to new_standart_path
    else
      render action: 'new'
    end
  end

  def edit
    @standart = Standart.find(params[:id])
  end

  def update
    @standart = Standart.find(params[:id])

    if @standart.update(Standart_params)
      redirect_to new_Standart_path
    else
      render action: 'edit'
    end    
  end

  def destroy
    @standart = Standart.find(params[:id])
    @standart.destroy

    redirect_to standarts_path
  end

  private

  def Standart_params
    params.require(:standart).permit(:title, :description)
  end

end
