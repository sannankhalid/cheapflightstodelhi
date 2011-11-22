require 'rubygems'
require 'parseexcel'
require 'open-uri'
puts "Running Seeds"

def add_departures
  puts "adding departure areas"
  Departure.create(:airport => 'London Heathrow', :city_id => '12008')
  Departure.create(:airport => 'London Gatwick', :city_id => '12008')
  Departure.create(:airport => 'Aberdeen - London', :city_id => '12008')
  Departure.create(:airport => 'Belfast Intl', :city_id => '12008')
  Departure.create(:airport => 'Birmingham London', :city_id => '12008')
  Departure.create(:airport => 'Bristol - London', :city_id => '12008')
  Departure.create(:airport => 'Cardiff - London', :city_id => '12008')
  Departure.create(:airport => 'Edinburgh - London', :city_id => '12008')
  Departure.create(:airport => 'Glasgow - London', :city_id => '12008')
  Departure.create(:airport => 'London City', :city_id => '12008')
  Departure.create(:airport => 'Newcastle - London', :city_id => '12008')
  Departure.create(:airport => 'Manchester', :city_id => '12008')
  puts "departure areas done"
end

def add_airlines
  puts "adding airlines"
  workbook = Spreadsheet::ParseExcel.parse("#{Dir.getwd}/db/airlines.xls")

  workbook.worksheet(0).each(1) { |row|
    if row == nil
      next
    end

    col = row.at(1);
    if col == nil
      next
    end
    name = col.to_s('latin1').strip;
    if name == ""
      next
    end

    msg = Airline.create(:name => name, :code => row.at(2).to_s('latin1').strip)

    unless msg.save
      msg.errors.each { |e| puts "Database Error: ", e }
    end
  }
  puts "done adding airlines"

end

def add_airline_classes
  puts "adding airline classes"
  AirlineClass.create(:name => "Economy Class")
  AirlineClass.create(:name => "Business Class")
  AirlineClass.create(:name => "Premium Class")
  AirlineClass.create(:name => "First Class")
  puts "done adding airline classes"
end

def add_pages
  puts "adding pages"
  Page.create(:name => "Home", :content => " .")
  Page.create(:name => "Flights", :content => " .")
  Page.create(:name => "Booking Terms", :content => " .")
  Page.create(:name => "About Us", :content => " .")
  Page.create(:name => "FAQs", :content => " .")
  Page.create(:name => "Contact Us", :content => " .")
  puts "done adding pages"
end

def add_default_user
  puts "adding default user"
  user = User.new(:username => "admin",
    :email => "admin@flightstube.co.uk",
    :is_activated => true,
    :password => "delllatitude786",
    :password_confirmation => "delllatitude786"
  )

  unless user.save
    user.errors.each { |e| puts "Error: ", e }
    return
  end
  puts "done adding default user"
end

add_departures()
add_airlines()
add_airline_classes()
add_pages()
add_default_user()