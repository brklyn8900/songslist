class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save

    flash[:notice] = 'Success!'
    redirect_to song_path(@song)
  end

  def song
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)

    flash[:notice] = 'Updated!'
    redirect_to song_path(@song)
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    flash[:notice] = 'Destroyed!'
    redirect_to songs_path
  end

  def song_params
    params.require(:song).permit(:title, :artist, :url)
  end


end
