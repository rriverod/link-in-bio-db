class PagesController < ApplicationController

  def home
    @list_of_items=Item.all.order({ :created_at => :desc })
    render({ :template => "templates/home" })
  end
end
