require 'net/http'
require 'csv'
class PagesController < ApplicationController
  def home

  end
  
  def search
    name = params[:name]
    password = params[:password]
    if (name == "sisley" && password == "123")
      redirect_to :action => "sisley", :name => name, :password => 123
    else
      redirect_to :action => "student", :name => name, :password => password
    end
  end
  
  def sisley
    name = params[:name]
    password = params[:password]
    if (name == "sisley" && password == "123")
      @u = User.all
      latest = Broadcast.order("created_at DESC")
      @broadcast = latest.take(1)
    else
      #error
    end
  end
  def broadcast
    broadcast = params[:broadcast]
    Broadcast.create(:content => broadcast)
    redirect_to :action => "sisley"
  end
  
  def student
    name = params[:name]
    password = params[:password]
    @u = User.find_by_name(name)
    if (@u.password == password)
      latestBroadcast = Broadcast.order("created_at DESC")
      @broadcast = latestBroadcast.take(2)
      latestTopic = Topic.order("created_at DESC")
      @topic = latestTopic.take(20)
      @classTime = Classtime.find_by_name(name)
    else
      #error
    end
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
  
  #def import
  #User.import(params[:file])
  #redirect_to :action=> "sisley", notice: "Products imported."
  #end
  
  def loadUser
    User.import_data(params[:import_csv][:csv].read)
    @message = "db updated!"
    
    render "sisley"
  end
  
  def loadTopic
    Topic.import_data(params[:import_csv][:csv].read)
    @message = "db updated!"
    
    render "sisley"
  end
  
  def loadClassTime
    Classtime.import_data(params[:import_csv][:csv].read)
    @message = "db updated!"
    
    render "sisley"
  end
  
  def backSisley
    redirect_to :action => "sisley"
  end
end