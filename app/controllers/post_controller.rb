class PostController < ApplicationController
  skip_before_action :verify_authenticity_token # 사이트 간 위조 공격을 받아도 되! 액션을 실행하기 전에 토큰이 유효한지 판단하는 것은 넘어가 !!
  
  def index
    @boards = Board.all.reverse
  end
  
  def new
  end
  
  def create
    @title = params[:title]
    @content = params[:content]
    
    @board = Board.new #새로운 board를 생성
    @board.title = @title
    @board.content = @content
    @board.save
    redirect_to '/'  # create 실행하고 create rendering 하지말고 root로 가!
  end
  
  def show
    @board = Board.find(params[:id])  #params............
  end
  
  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    
    redirect_to '/'
  end
end
