class PicturesController < ApplicationController

  before_action :ensure_logged_in, except: [:show, :index]
  before_action :load_picture, only: [:show, :edit, :update, :destroy]
  before_action :ensure_user_owns_picture, only: [:edit, :update, :destroy]

  def index
    @pictures = Picture.all
    @one_month_ago = Picture.one_month_ago
    @year = params[:year]
    if params[:year] == params[:year]
      year = params[:year]
      @pictures_from_year = Picture.where("cast(strftime('%Y', created_at) as int) = ?", year)
    else
      render :index
    end
  end

  def show
  #  @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

#In the create action in the PicturesController, before you call save on the new picture, make sure you are assigning the user_id attribute of the picture using current_user, in addition to its other attributes.


  def create
    @picture = Picture.new

    @picture.title = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url = params[:picture][:url]

    if @picture.save
      # If the picture gets saved, generate a request to '/pictures' (the index)
      redirect_to "/pictures"
    else
      # Otherwise render new.html.erb
      render :new
    end
  end

  def edit
  #  @picture = Picture.find(params[:id])
  end

  def update
    @picture.title = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url = params[:picture][:url]

      if @picture.save
        redirect_to "/pictures/#{@picture.id}"
      else
        render :edit
      end
  end

  def destroy
    @picture.destroy
    redirect_to "/pictures"
  end

  def load_picture
    @picture = Picture.find(params[:id])
  end



end
