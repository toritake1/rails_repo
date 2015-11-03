class HaMovieController < ApplicationController
  before_action :set_movielist, only: [:show]

  # GET /movielists/1
  # GET /movielists/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movielist
       @movielist = HaMovie.where(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movielist_params
      params[:movielist]
    end


end
