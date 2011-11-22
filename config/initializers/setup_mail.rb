ActionMailer::Base.smtp_settings = {
    :address              => "mail.cheapflightstodelhi.org",
    :port                 => "587",
    :domain               => "cheapflightstodelhi.org",
    :enable_starttls_auto => false,
    :authentication       => :login,
    :user_name            => "webmaster@cheapflightstodelhi.org",
    :password             => "passforcheapflightstodelhi"
}

ActionMailer::Base.default_url_options[:host] = "cheapflightstodelhi.org"
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?