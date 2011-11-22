class EnquiryDetailsController < ApplicationController
  # GET /enquiry_details
  # GET /enquiry_details.xml
  def index
    @enquiry_details = EnquiryDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @enquiry_details }
    end
  end

  # GET /enquiry_details/1
  # GET /enquiry_details/1.xml
  def show
    @enquiry_detail = EnquiryDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @enquiry_detail }
    end
  end

  # GET /enquiry_details/new
  # GET /enquiry_details/new.xml
  def new
    @enquiry_detail = EnquiryDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @enquiry_detail }
    end
  end

  # GET /enquiry_details/1/edit
  def edit
    @enquiry_detail = EnquiryDetail.find(params[:id])
  end

  # POST /enquiry_details
  # POST /enquiry_details.xml
  def create
    @enquiry_detail = EnquiryDetail.new(params[:enquiry_detail])

    respond_to do |format|
      if @enquiry_detail.save
        format.html { redirect_to(@enquiry_detail, :notice => 'Enquiry detail was successfully created.') }
        format.xml  { render :xml => @enquiry_detail, :status => :created, :location => @enquiry_detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @enquiry_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /enquiry_details/1
  # PUT /enquiry_details/1.xml
  def update
    @enquiry_detail = EnquiryDetail.find(params[:id])

    respond_to do |format|
      if @enquiry_detail.update_attributes(params[:enquiry_detail])
        format.html { redirect_to(@enquiry_detail, :notice => 'Enquiry detail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @enquiry_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /enquiry_details/1
  # DELETE /enquiry_details/1.xml
  def destroy
    @enquiry_detail = EnquiryDetail.find(params[:id])
    @enquiry_detail.destroy

    respond_to do |format|
      format.html { redirect_to(enquiry_details_url) }
      format.xml  { head :ok }
    end
  end
end
