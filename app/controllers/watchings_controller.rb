class WatchingsController < ApplicationController
  def index
    @episodes = Episode.order(:season, :sequence)

    @unwatched = @episodes.where(:viewed_at=>nil)
    @watched = @episodes - @unwatched
  end

end
