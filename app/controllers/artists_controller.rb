class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @photos = @artist.photos
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.new(article_params)
    if @artist.save
      image_params.each do |image|
        @artist.photos.create(image: image)

      redirect_to @artist
    else
      render 'new'
    end
  end

  def update
  @artist = Artist.find(params[:id])

  if @artist.update(artist_params)
    image_params.each do |image|
      @artist.photos.create(image: image)
    end

    redirect_to @artist
  else
    render 'edit'
  end
end

def destroy
  @artist = Artist.find(params[:id])
  @artist.destroy

  redirect_to artist_path
end

  private
  def article_params
    params.require(:artist).permit(:name)
  end

  def image_params
    params[:images].present? ? params.require(:images) : []
  end
end
