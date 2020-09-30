class ChoresController < ApplicationController
  before_action :find_user, only: [:index, :create]

  def index
    @chores = Chore.all
  end

  def show
    @chore = Chore.find(params[:id])
  end

  def new
    @chore = Chore.new
  end

  def create
    @chore = Chore.new(chore_params)
    @chore.user = @user
    if @chore.save
      redirect_to @chore
    else
      render 'new'
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def find_chore
    @chore = Chore.find(params[:id])
  end

  def chore_params
    params.require(:chore).permit(:title, :category, :priority, :complete)
  end
end
