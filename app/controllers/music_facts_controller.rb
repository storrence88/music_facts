class MusicFactsController < ApplicationController
  def index
    @music_fact = MusicFact.new
    @music_facts = MusicFact.all
  end

  def create
    @music_fact = MusicFact.new
    @music_fact.fact = params[:music_fact][:fact]
    @music_fact.save

  redirect_to music_facts_path
  end
end
