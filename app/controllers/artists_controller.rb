class ArtistsController < ApplicationController

def new
end

def create
  render plain: params[:artist].inspect
end

end
