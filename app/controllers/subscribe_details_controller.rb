class SubscribeDetailsController < ApplicationController
  # GET /subscribe_details
  # GET /subscribe_details.xml
  def index
    @subscribe_details = SubscribeDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subscribe_details }
    end
  end

  # GET /subscribe_details/1
  # GET /subscribe_details/1.xml
  def show
    @subscribe_detail = SubscribeDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subscribe_detail }
    end
  end

  # GET /subscribe_details/new
  # GET /subscribe_details/new.xml
  def new
    @subscribe_detail = SubscribeDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subscribe_detail }
    end
  end

  # GET /subscribe_details/1/edit
  def edit
    @subscribe_detail = SubscribeDetail.find(params[:id])
  end

  # POST /subscribe_details
  # POST /subscribe_details.xml
  def create
    @subscribe_detail = SubscribeDetail.new(params[:subscribe_detail])

    respond_to do |format|
      if @subscribe_detail.save
        format.html { redirect_to(@subscribe_detail, :notice => 'Subscribe detail was successfully created.') }
        format.xml  { render :xml => @subscribe_detail, :status => :created, :location => @subscribe_detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subscribe_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subscribe_details/1
  # PUT /subscribe_details/1.xml
  def update
    @subscribe_detail = SubscribeDetail.find(params[:id])

    respond_to do |format|
      if @subscribe_detail.update_attributes(params[:subscribe_detail])
        format.html { redirect_to(@subscribe_detail, :notice => 'Subscribe detail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subscribe_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subscribe_details/1
  # DELETE /subscribe_details/1.xml
  def destroy
    @subscribe_detail = SubscribeDetail.find(params[:id])
    @subscribe_detail.destroy

    respond_to do |format|
      format.html { redirect_to(subscribe_details_url) }
      format.xml  { head :ok }
    end
  end
end
