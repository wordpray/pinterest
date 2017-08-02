class BoardsController < ApplicationController

  def index
    @boards = Boads.all.order("created_at DESC")
    @board = Boads.new
  end

  def new
    @board = Boads.new
  end

  def create
    @board = Boads.new(board_params)
    if @board.save
      redirect_to @board
    else
      render 'new'
    end
  end

end
