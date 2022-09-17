class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end


  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @list = List.find(params[:id])
  end

  def destroy
    @list = List.find(params[:id])
    #@list.delete
    @list.destroy

  end

  private

  def list_params
    params.require(:list).permit(:title, :overview, :porter_url, :rating)
  end

end
