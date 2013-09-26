class RequestsController < ApplicationController
  
  def index
  	@requests = Request.all
  end

  def show
    @request = Request.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @request }
    end
  end

  def new
  	@request = Request.new

  	respond_to do |format|
  		format.html
  		format.json { render json: @request }
  	end
  end

  def create
  	@request = Request.new(params[:request])

  	respond_to do |format|
  		if @request.save
  			format.html { redirect_to '/#contact', notice: "Message was sent successfully!"}
  			format.json { render json: @request, status: :created, location: @request }
  		else
  			format.html { redirect_to '/#contact', notice: "Failed to fill all required fields, please try again."}
  			format.json { render json: @user.errors, status: :unprocessable_entity }
  		end
  	end
  end

end
