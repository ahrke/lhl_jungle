class Admin::CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def create
    puts "===> params.category.name: #{params['category']} <=="
    @category = Category.new
    @category.name = params['category'][:name]
    @category.created_at = Date.current
    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  def new
    @category = Category.new
  end
end
