class ClasstimesController < ApplicationController
  before_action :set_classtime, only: [:show, :edit, :update, :destroy]

  # GET /classtimes
  # GET /classtimes.json
  def index
    @classtimes = Classtime.all
    if params[:p] != "success"
      render 'pages/db'
    end
  end
  
  def exportClasstime
    @classtimes = Classtime.all
    respond_to do |format|
      format.html
      format.xls  { send_data @products.to_csv(col_sep: "\t") }
    end
    render "index"
  end
  
  # GET /classtimes/1
  # GET /classtimes/1.json
  def show
  end

  # GET /classtimes/new
  def new
    @classtime = Classtime.new
  end

  # GET /classtimes/1/edit
  def edit
    #name = params[:name]
    #password = params[:password]
    #totalTime = params[:totalTime]
    #takenTime = params[:takenTime]
    #vipbalance = params[:VIPbalance]
    #givenVIPtime = params[:givenVIPtime]
    #takenVIPTime = params[:takenVIPTime]
    #validDate = params[:validDate]
    #balance = totalTime - takenTime
    #lastClass = Time.new
    #@classtime.update_attributes(:name => name,:password => password, :totalTime => totalTime, :takenTime => takenTime,
    #:balance => balance, :VIPbalance => vipbalance, :givenVIPtime => givenVIPtime, :takenVIPTime => takenVIPTime, :lastClass => lastClass,
    #:validDate => validDate)
  end


  # POST /classtimes
  # POST /classtimes.json
  def create
    @classtime = Classtime.new(classtime_params)
    respond_to do |format|
      if @classtime.save
        format.html { redirect_to @classtime, notice: 'Classtime was successfully created.' }
        format.json { render action: 'show', status: :created, location: @classtime }
      else
        format.html { render action: 'new' }
        format.json { render json: @classtime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classtimes/1
  # PATCH/PUT /classtimes/1.json
  def update
    respond_to do |format|
      if @classtime.update(classtime_params)
        format.html { redirect_to @classtime, notice: 'Classtime was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @classtime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classtimes/1
  # DELETE /classtimes/1.json
  def destroy
    @classtime.destroy
    respond_to do |format|
      format.html { redirect_to classtimes_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_classtime
    @classtime = Classtime.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def classtime_params
    params.require(:classtime).permit(:name, :password, :totalTime, :takenTime, :balance, :VIPbalance, :givenVIPtime, :takenVIPTime, :lastClass, :validDate)
  end
end
