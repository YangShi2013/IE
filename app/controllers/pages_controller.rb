class PagesController < ApplicationController
  def home

  end
  def student
    name = params[:name]
    password = params[:password]
    @u = User.find_by_name(name)
  end
end