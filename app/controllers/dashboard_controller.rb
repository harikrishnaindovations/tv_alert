class DashboardController < ApplicationController
  def index
    @tv_shows = TvShow.all
    @favourite_shows = current_user.tv_shows
  end
end
