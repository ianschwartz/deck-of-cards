class DecksController < ApplicationController
  def index
  end

  def show
    @deck = Deck.new(params[:id])
  end
end
