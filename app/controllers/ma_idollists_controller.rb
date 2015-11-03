class MaIdollistsController < ApplicationController
  before_action :set_idollist, only: [:show]
  before_action :set_movielist, only: [:show]

  # GET /idollists/1
  # GET /idollists/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idollist
      @idollist = MaIdollist.find(params[:id])
    end
    
    def set_movielist
        @movielist = MaMovie.where(ma_idollist_id: params[:id]).order("id desc").page(params[:page]).per(10)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idollist_params
      params[:idollist]
    end

end
