class PastesController < ApplicationController
  before_action :set_paste, only: [:show, :update, :destroy]
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

  def update
    if @paste.update(update_paste_params)
      redirect_to @paste
    else
      render 'show'
    end
  end

  def destroy
    @note.destroy
    redirect_to new_paste_url
  end

  private
  
  def set_paste
    @paste = Paste.find(params[:id])
  end

  def create_paste_params
    params.require(:paste).permit(:title, :body)
  end
  def update_paste_params
    params.require(:paste).permit(:title, :body)
  end
end
