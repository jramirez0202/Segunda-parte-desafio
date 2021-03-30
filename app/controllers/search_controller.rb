class SearchController < ApplicationController
  def create
    word_search = "%#{params[:keyword]}"
    @posts = Post.where("title LIKE ? OR content LIKE ?",word_search, word_search)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { render json: @posts }
      format.js
    end

  end
end
