class Admin::RssController < ApplicationController
  def index
    @rsses = Rss.find(:all)
  end
  
  def new
    @rss = Rss.new
    render :partial => "new"
  end
  
  def create
    @rss = Rss.new(params[:rss])
    if @rss.save
      redirect_to "/admin/rss"
    end
  end
  
  def edit
    @rss = Rss.find(params[:id])
    render :partial => "edit"
  end
  
  def update
    @rss = Rss.find(params[:id])
    @rss.update_attributes(params[:rss])
    if @rss.save
      redirect_to "/admin/rss"
    end
  end
  
  def destroy
    @rss = Rss.find(params[:id])
    @rss.destroy
    redirect_to "/admin/rss"
  end
end