class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    # raise
    @board = Board.new params[:board]
    # @board = Board.new({name: "dfghj"})
    @board.save
    redirect_to board_path(@board)
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    @board.update_attributes(params[:board])
    redirect_to board_path(@board)
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to boards_path
  end

end
