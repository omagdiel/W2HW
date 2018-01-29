class PostsController < ApplicationController

  def show
    @posts = Post.find(params[:id])
  end

  def create
    @posts = Post.new(params.require(:post).permit(:title,:subtitle, :body, :image))

    respond_to do |format|
      if @posts.save
        format.html { redirect_to posts_path, notice: 'Your post was successfully created.' }
        # format.json { render :show, status: :created, location: @portfolio_items }
      else
        format.html { render :new }
        # format.json { render json: @portfolio_items.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @posts = Post.new
  end

  def index
    @posts = Post.all
  end

  def destroy
    #perform the lookup================
    @posts = Post.find(params[:id])
# => Destroy/delete the record==============
    @posts.destroy
    #redirect==================
    respond_to do |format|
      format.html { redirect_to post_url, notice: 'Record was successfully destroyed.' }
    end
  end

  def edit
    @posts = Post.find(params[:id])
  end

  def update
    @posts = Post.find(params[:id])

    respond_to do |format|
      if @posts.update(params.require(:post).permit(:title, :subtitle, :body, :image))
        format.html { redirect_to posts_path, notice: 'Post was successfully updated.' }

      else
        format.html { render :edit }

      end
    end
  end
end
