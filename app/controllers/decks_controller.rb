class DecksController < ApplicationController
  def index
  end

  def show
    decks = params[:id].to_i
    if decks == 0
      flash[:message] = "I can't shuffle 0 decks! Choose a number between 1 and 10."
      redirect_to root_url
    elsif decks > 11
      flash[:message] = "Way too many decks! Limit it to between 1 and 10 please!"
      redirect_to root_url
    else

      @cards = Deck.new(decks).cards
    end
  end
end
