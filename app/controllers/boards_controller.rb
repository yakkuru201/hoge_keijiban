class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new params[:id]
    @board.save
    redirect_to board_path(@board)
  end

  def 
    @board = Board.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
