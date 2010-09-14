class EpisodesController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @episodes = Episode.all
    respond_with Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    respond_with @episode
  end

  def new
    @episode = Episode.new
    respond_with @episode
  end

  def edit
    @episode = Episode.find(params[:id])
  end

  def create
    @episode = Episode.new(params[:episode])
    flash[:notice] = 'Episode was successfully created.' if @episode.save

    respond_with @episode
  end

  def update
    @episode = Episode.find(params[:id])
    flash[:notice] = 'Episode was successfully updated.' if @episode.save
    respond_with @episode
  end

  def destroy
    @episode = Episode.find(params[:id])
    @episode.destroy

    respond_with @episode
  end
end
