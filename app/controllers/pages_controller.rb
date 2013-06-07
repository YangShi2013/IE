class PagesController < ApplicationController
  def home

  end
  
  def search
    name = params[:name]
    password = params[:password]
    if (name == "sisley" && password == "123")
      redirect_to :action => "sisley", :name => name
    else
      redirect_to :action => "student", :name => name, :password => password
    end
  end
  
  def sisley
    @u = User.all
    latest = Broadcast.order("created_at DESC")
    @broadcast = latest.take(1)
  end
  def broadcast
    broadcast = params[:broadcast]
    Broadcast.create(:content => broadcast)
  end
  
  def student
    name = params[:name]
    password = params[:password]
    @u = User.find_by_name(name)
    latest = Broadcast.order("created_at")
    @broadcast = latest.take(1)
  end
  
  def editUser
    redirect_to :action => "editUser"
  end
  
  def editClasstime
    redirect_to :action => "editClasstime"
  end
  
  def editTopic
    redirect_to :action => "editTopic"
  end
end