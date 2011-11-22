class UserMailer < ActionMailer::Base
  include Devise::Controllers::ScopedViews
  attr_reader :devise_mapping, :resource
  default :from => "webmaster@cheapflightstodelhi.org"

  def contact_form(title, first_name, last_name, email, phone, airport, destination_name, departure_date, return_date, airline_class_name, message, email_type)
    @title = title
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @airport = airport
    @destination_name = destination_name
    @departure_date = departure_date
    @return_date = return_date
    @airline_class_name = airline_class_name
    @message = message
    @email_type = email_type
    mail(:to => "info@flightstube.co.uk", :subject => "Enquiry Contact Form - Cheapflightstodelhi")
  end
  def enquiry_form(first_name, last_name, flight_type, departure_airport, destination_name, return_date, departure_date, mobile, email, adult, child, infant)
    @first_name = first_name
    @last_name = last_name
    @flight_type = flight_type
    @departure_airport = departure_airport
    @destination_name = destination_name
    @return_date = return_date
    @departure_date = departure_date
    @mobile = mobile
    @email = email
    @adult = adult
    @child = child
    @infant = infant
    mail(:to => "info@flightstube.co.uk", :subject => "Enquiry Form - Cheapflightstodelhi")
  end
  def confirmation_instructions(user, user_password)
    @user = user
    @user_password = user_password
    mail(:to => "#{user.email}", :subject => "Registered")
  end


  def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.email}", :subject => "Registered")
  end

  private

  # Configure default email options
  def setup_mail(record, action)
    @scope_name     = Devise::Mapping.find_scope!(record)
    @devise_mapping = Devise.mappings[@scope_name]
    @resource       = instance_variable_set("@#{@devise_mapping.name}", record)

    headers         = {
        :subject       => translate(@devise_mapping, action),
        :from          => "webmaster@cheapflightstodelhi.org",
        :to            => record.email,
        :template_path => template_paths
    }

    headers.merge!(record.headers_for(action)) if record.respond_to?(:headers_for)
    mail(headers)
  end

  def mailer_sender(mapping)
    if Devise.mailer_sender.is_a?(Proc)
      Devise.mailer_sender.call(mapping.name)
    else
      Devise.mailer_sender
    end
  end

  def template_paths
    template_path = [self.class.mailer_name]
    template_path.unshift "#{@devise_mapping.plural}/mailer" if self.class.scoped_views?
    template_path
  end

  # Setup a subject doing an I18n lookup. At first, it attemps to set a subject
  # based on the current mapping:
  #
  #   en:
  #     devise:
  #       mailer:
  #         confirmation_instructions:
  #           user_subject: '...'
  #
  # If one does not exist, it fallbacks to ActionMailer default:
  #
  #   en:
  #     devise:
  #       mailer:
  #         confirmation_instructions:
  #           subject: '...'
  #
  def translate(mapping, key)
    I18n.t(:"#{mapping.name}_subject", :scope => [:devise, :mailer, key],
           :default                           => [:subject, key.to_s.humanize])
  end
end