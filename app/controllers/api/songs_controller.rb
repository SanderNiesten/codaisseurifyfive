skip_before_action :verify_authenticity_token

before_action :artist_set

  def new
    @song = @artist.songs.build
  end

  def create
    @song = @artist.songs.create(song_params)
    if @song.save
      render status: 200, json: @song
    else
      render status: 422, json: {
        errors: @song.errors
      }
    end
  end

  def destroy
    @song = @artist.songs.find(params[:id])
    @song.destroy
    render status: 200, json: {
      message: "Song deleted"
    }.to_json
  end

  private

  def artist_set
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:id, :name)
  end
