class HomeController < ApplicationController
  def index
  end

  def menu
    @sections = Section.all

    if params[:section].blank?
      @food_items = FoodItem.all
    else
      @section = Section.where(name: params[:section]).first
      @food_items = @section.food_items
    end

    if params[:sort_column]
      @food_items = @food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
    end

    if params[:search].present?
      @food_items = @food_items.where('lower(name) like ?', "%#{params[:search].downcase}%")
    end

  end

  def contact_us
  end

end
