class SchedualsController < ApplicationController
  
  def index
    @scheduals = Schedual.all
    @count = Schedual.count
  end

  def show
    @schedual = Schedual.find(params[:id])
  end

  def new
    @schedual = Schedual.new
  end

  def create
    @schedual = Schedual.new(params.require(:schedual).permit(:title, :start_date, :end_date, :full_day, :memo))
    if @schedual.save
      redirect_to root_path,notice:"作成しました"
    else 
      flash[:notice] = "Error"
      render "new"
    end
  end

  def edit 
    @schedual = Schedual.find(params[:id])
  end

  def update 
    @schedual = Schedual.find(params[:id])
    if @schedual.update(params.require(:schedual).permit(:title, :start_date, :end_date, :full_day, :memo))
      redirect_to root_path,notice:"編集しました"
    else
      flash[:notice] = "Error"
      render "edit"
    end
  end

  def show
    @schedual = Schedual.find(params[:id])
  end

  def destroy
    schedual = Schedual.find(params[:id])
    if schedual.destroy
      redirect_to root_path, notice: "削除しました"
    end
  end

end
