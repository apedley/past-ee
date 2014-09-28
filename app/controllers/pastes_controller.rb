class PastesController < ApplicationController
  before_action :set_paste, only: [:show, :edit, :update, :destroy]
  def show
  end

	def new
    @paste = Paste.new
  end

  def create
    @paste = Paste.new(create_paste_params)

    if @paste.save
      redirect_to @paste
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def set_paste
    @paste = Paste.find(params[:id])
  end

  def create_paste_params
    params.require(:paste).permit(:title, :body)
  end
end
