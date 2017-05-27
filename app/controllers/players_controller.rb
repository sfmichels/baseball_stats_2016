class PlayersController < ApplicationController
  def show
    @player = Player.find(params[:id])
  end

  def search
    @players = Player.search(params[:nameFirst], [:nameLast.last])
  end
end
