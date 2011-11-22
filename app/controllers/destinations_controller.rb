class DestinationsController < ApplicationController
  before_filter :authenticate_user!
  layout 'admin'

  def index
    @destinations = Destination.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @destinations }
    end
  end

  # GET /destinations/1
  # GET /destinations/1.xml
  def show
    @destination  = Destination.find(params[:id])
    @fare_details = FareDetail.find_all_by_destination_id(@destination.id)
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @destination }
    end
  end

  # GET /destinations/new
  # GET /destinations/new.xml
  def new
    @destination = Destination.new
    @cities      = City.all.sort! { |a, b| a.name.downcase <=> b.name.downcase }
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @destination }
    end
  end

  # GET /destinations/1/edit
  def edit
    @destination = Destination.find(params[:id])
    @cities      = City.all.sort! { |a, b| a.name.downcase <=> b.name.downcase }
  end

  # POST /destinations
  # POST /destinations.xml
  def create
    @destination = Destination.new(params[:destination])

    respond_to do |format|
      if @destination.save
        format.html { redirect_to(@destination, :notice => 'Destination was successfully created.') }
        format.xml { render :xml => @destination, :status => :created, :location => @destination }
      else
        @cities = City.all.sort! { |a, b| a.name.downcase <=> b.name.downcase }
        format.html { render :action => "new" }
        format.xml { render :xml => @destination.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /destinations/1
  # PUT /destinations/1.xml
  def update
    @destination = Destination.find(params[:id])

    respond_to do |format|
      if @destination.update_attributes(params[:destination])
        format.html { redirect_to(@destination, :notice => 'Destination was successfully updated.') }
        format.xml { head :ok }
      else
        @cities = City.all.sort! { |a, b| a.name.downcase <=> b.name.downcase }
        format.html { render :action => "edit" }
        format.xml { render :xml => @destination.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /destinations/1
  # DELETE /destinations/1.xml
  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy

    respond_to do |format|
      format.html { redirect_to(destinations_url) }
      format.xml { head :ok }
    end
  end

  def delete_fare
    @fare_detail = FareDetail.find(params[:id])
    @fare_detail.destroy
    render :text => "ok"
  end

  def destroy_destination
    @destination = Destination.find(params[:id])
    @destination.destroy
    render :text => "ok"
  end
end
