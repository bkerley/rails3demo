class WatchingsController < ApplicationController
  def index
    # build query of all episodes ordered by season and sequence columns
    @episodes = Episode.order(:season, :sequence)

    # build query of all episodes where viewd_at is NULL ordered by season and sequence columns
    @unwatched = @episodes.where(:viewed_at=>nil)
    
    # executes both queries to build result arrays
    @watched = @episodes - @unwatched
  end
end
