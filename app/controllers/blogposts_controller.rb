class BlogpostsController < ApplicationController
  layout 'blog'

  def index
    @data = Blogpost.all.order('created_at desc')
  end

  def add
    @blogpost =Blogpost.new
    @genres = Bloggenre.all 
    if request.post?
      @blogpost = Blogpost.create blogposts_params
      redirect_to '/blogposts'
    end
  end

  def edit
    @blogpost Blogpost.find(params[:id])
    @genres = Bloggenre.all
    if request post?
      @blogpost.update blogposts_params
      redirect_to '/blogposts'
    end
  end

  def delete
    @blogpost = Blogpost.find(params[:id])
    if request.post?
      @blogpost.destroy
      redirect_to '/blogposts'
    end
  end

  private
  def blogpost_params
    params.require(:blogpost).permit(:title, :read, :content, :bloggenre_id)
  end
end
