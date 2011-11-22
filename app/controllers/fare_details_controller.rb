class FareDetailsController < ApplicationController
  before_filter :authenticate_user!
  layout 'admin'

  def index
    @fare_details = FareDetail.all
    @airlines     = Airline.all.sort! { |a, b| a.name.downcase <=> b.name.downcase }

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @fare_details }
    end
  end

  # GET /fare_details/1
  # GET /fare_details/1.xml
  def show
    @fare_detail = FareDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @fare_detail }
    end
  end

  # GET /fare_details/new
  # GET /fare_details/new.xml
  def new
    @fare_detail = FareDetail.new
    @airlines    = Airline.all.sort! { |a, b| a.name.downcase <=> b.name.downcase }
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @fare_detail }
    end
  end

  # GET /fare_details/1/edit
  def edit
    @fare_detail = FareDetail.find(params[:id])
    @airlines    = Airline.all.sort! { |a, b| a.name.downcase <=> b.name.downcase }
  end

  # POST /fare_details
  # POST /fare_details.xml
  def create
    chk_fare = FareDetail.find_by_destination_id_and_airline_id_and_departure_id("#{params[:fare_detail][:destination_id]}", "#{params[:fare_detail][:airline_id]}", "#{params[:fare_detail][:departure_id]}")
    if chk_fare.blank?
      @fare_detail = FareDetail.new(params[:fare_detail])
      if @fare_detail.save
        render :text => "#{params[:fare_detail][:destination_id]}"
      else
        @airlines = Airline.all.sort! { |a, b| a.name.downcase <=> b.name.downcase }
        render :action => "new"
      end
    else
      render :text => "cancel"
    end
  end

  # PUT /fare_details/1
  # PUT /fare_details/1.xml
  def update
    @fare_detail = FareDetail.find(params[:id])
    if @fare_detail.update_attributes(params[:fare_detail])
      render :text => "#{params[:fare_detail][:destination_id]}"
    else
      @airlines = Airline.all.sort! { |a, b| a.name.downcase <=> b.name.downcase }
      render :text => "cancel"
    end
  end

  # DELETE /fare_details/1
  # DELETE /fare_details/1.xml
  def destroy
    @fare_detail = FareDetail.find(params[:id])
    @fare_detail.destroy

    respond_to do |format|
      format.html { redirect_to(fare_details_url) }
      format.xml { head :ok }
    end
  end
end
