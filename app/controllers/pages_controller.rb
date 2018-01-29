class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def posts
  end

  def titles
    @posts = Post.all
  end

  def search
  end
end
