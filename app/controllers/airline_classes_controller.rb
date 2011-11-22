class AirlineClassesController < ApplicationController
  # GET /airline_classes
  # GET /airline_classes.xml
  def index
    @airline_classes = AirlineClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @airline_classes }
    end
  end

  # GET /airline_classes/1
  # GET /airline_classes/1.xml
  def show
    @airline_class = AirlineClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @airline_class }
    end
  end

  # GET /airline_classes/new
  # GET /airline_classes/new.xml
  def new
    @airline_class = AirlineClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @airline_class }
    end
  end

  # GET /airline_classes/1/edit
  def edit
    @airline_class = AirlineClass.find(params[:id])
  end

  # POST /airline_classes
  # POST /airline_classes.xml
  def create
    @airline_class = AirlineClass.new(params[:airline_class])

    respond_to do |format|
      if @airline_class.save
        format.html { redirect_to(@airline_class, :notice => 'Airline class was successfully created.') }
        format.xml  { render :xml => @airline_class, :status => :created, :location => @airline_class }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @airline_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /airline_classes/1
  # PUT /airline_classes/1.xml
  def update
    @airline_class = AirlineClass.find(params[:id])

    respond_to do |format|
      if @airline_class.update_attributes(params[:airline_class])
        format.html { redirect_to(@airline_class, :notice => 'Airline class was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @airline_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /airline_classes/1
  # DELETE /airline_classes/1.xml
  def destroy
    @airline_class = AirlineClass.find(params[:id])
    @airline_class.destroy

    respond_to do |format|
      format.html { redirect_to(airline_classes_url) }
      format.xml  { head :ok }
    end
  end
end
