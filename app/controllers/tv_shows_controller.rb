class TvShowsController < ApplicationController

  before_action :get_show

  def remove_favourite
    current_user.favourites.find_by(tv_show_id: @show.id)&.delete
    redirect_to root_path
  end

  def add_favourite
    current_user.favourites.create(tv_show_id: @show.id)
    redirect_to root_path
  end

  private
    def get_show
      @show ||= TvShow.find_by(id: params[:id])
    end
end
