class DeparturesController < ApplicationController
  # GET /departures
  # GET /departures.xml
  def index
    @departures = Departure.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @departures }
    end
  end

  # GET /departures/1
  # GET /departures/1.xml
  def show
    @departure = Departure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @departure }
    end
  end

  # GET /departures/new
  # GET /departures/new.xml
  def new
    @departure = Departure.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @departure }
    end
  end

  # GET /departures/1/edit
  def edit
    @departure = Departure.find(params[:id])
  end

  # POST /departures
  # POST /departures.xml
  def create
    @departure = Departure.new(params[:departure])

    respond_to do |format|
      if @departure.save
        format.html { redirect_to(@departure, :notice => 'Departure was successfully created.') }
        format.xml  { render :xml => @departure, :status => :created, :location => @departure }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @departure.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /departures/1
  # PUT /departures/1.xml
  def update
    @departure = Departure.find(params[:id])

    respond_to do |format|
      if @departure.update_attributes(params[:departure])
        format.html { redirect_to(@departure, :notice => 'Departure was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @departure.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /departures/1
  # DELETE /departures/1.xml
  def destroy
    @departure = Departure.find(params[:id])
    @departure.destroy

    respond_to do |format|
      format.html { redirect_to(departures_url) }
      format.xml  { head :ok }
    end
  end
end
