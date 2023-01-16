class CategoriesController < ApplicationController

  def index
    @categories = Category.order(:name)
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(categories_params)
    if @category.save
      redirect_to
    else
      # The 'new' action is NOT being called here
      # Assign any instance variables needed
      # @count = Task.count
      render('new')
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(categories_params)
      redirect_to category_path(@category)
    else
      render('edit')
    end
  end

  def delete
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private

  def categories_params
    params.require(:category).permit(
      :name
    )
  end

end
