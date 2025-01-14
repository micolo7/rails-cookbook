class BookmarksController < ApplicationController
end

def new
  @category = Category.find(params[:category_id])
  @bookmark = Bookmark.new
end

def create
  @category = Category.find(params[:category_id])
  @bookmark = Bookmark.new(bookmark_params)
  @bookmark.category = @category

  if @bookmark.save
    redirect_to category_path(@category), notice: "Recipe added to category successfully!"
  else
    render :new, status: :unprocessable_entity
  end
end

def destroy
  @bookmark = Bookmark.find(params[:id])
  @bookmark.destroy
  redirect_to category_path(@bookmark.category), notice: "Recipe removed from category."
end

private

def bookmark_params
  params.require(:bookmark).permit(:recipe_id, :comment)
end
