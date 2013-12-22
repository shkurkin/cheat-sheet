class TipsController < ApplicationController
  def index
    @tip = Tip.new
    @tips = Tip.all
    @html = Tip.where("category = ?", "html")
    @css = Tip.where("category = ?", "css")
    @ruby = Tip.where("category = ?", "ruby")
    @js = Tip.where("category = ?", "js")
    @git = Tip.where("category = ?", "git")
    @sql = Tip.where("category = ?", "sql")
    @other = Tip.where("category = ?", "other")
  end

  def show
    @tip = Tip.find(params[:id])
  end

  def create
    @tip = Tip.new(params[:tip])
    if @tip.save
      flash[:success] = "Tip added"
      redirect_to root_url
    else
      render 'index'
    end
  end

  def destroy
    Tip.find(params[:id]).destroy
    flash[:success] = "Tip deleted"
    redirect_to root_url
  end

  def new
  end
end
