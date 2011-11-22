class WelcomeController < ApplicationController
  layout "application"

  def send_enquiry
    destination                    = City.find_by_id(params[:flight][:destination_id])
    departure                      = Departure.find_by_id(params[:flight][:departure_id])
    @enquiry_detail                = EnquiryDetail.new
    @enquiry_detail.email          = params[:flight][:email]
    @enquiry_detail.mobile         = params[:flight][:mobile]
    @enquiry_detail.destination_id = destination.id
    @enquiry_detail.save
    UserMailer.deliver_enquiry_form(params[:flight][:first_name], params[:flight][:last_name], params[:flight][:type], departure.airport, destination.name, params[:flight][:return_date], params[:flight][:departure_date], params[:flight][:mobile], params[:flight][:email], params[:flight][:adult], params[:flight][:child], params[:flight][:infant])
    render :text => "Ok"
  end

  def contact_us
    @page = Page.find_by_name("Contact Us")
  end

  def faqs
    @page = Page.find_by_name("FAQs")
  end

  def about_us
    @page = Page.find_by_name("About Us")
  end

  def booking_terms
    @page = Page.find_by_name("Booking Terms")
  end

  def flights
    @page = Page.find_by_name("Flights")
  end

  def index
    @page        = Page.find_by_name("Home")
    @fares       = []
    destinations = []
    cities       = City.find_all_by_name("Delhi")
    cities.each do |city|
      city.destinations.each do |desti|
        destinations << desti
      end
    end
    unless destinations.blank?
      destinations.each do |desti|
        desti.fare_details.each do |eee|
          @fares << eee
        end
      end
    end
  end

  def destination
    @destination = Destination.find(params[:id])
  end

  def send_contact_us
    departure     = Departure.find(params[:contact][:departure_id])
    destination   = City.find(params[:contact][:city_id])
    airline_class = AirlineClass.find(params[:contact][:airline_class_id])
    UserMailer.deliver_contact_form(params[:contact][:title],
                                    params[:contact][:first_name],
                                    params[:contact][:last_name],
                                    params[:contact][:email],
                                    params[:contact][:phone],
                                    departure.airport,
                                    destination.name,
                                    params[:contact][:departure_date],
                                    params[:contact][:return_date],
                                    airline_class.name,
                                    params[:contact][:message],
                                    params[:contact][:email_type])
    render :text => "Ok"
  end

end