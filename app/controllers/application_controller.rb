class ApplicationController < ActionController::Base
  before_action :set_locale
  
  def page_not_found
    render :file => "#{Rails.root}/public/404.html", :status => 404
  end

  private
    def default_url_options
      {locale: I18n.locale}
    end
    
    def set_locale
      I18n.locale = extract_locale || I18n.default_locale
    end

    def extract_locale
      locale = params[:locale]
      locale.to_sym if locale && I18n.available_locales.include?(locale.to_sym)
    end
end