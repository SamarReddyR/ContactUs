class ApplicationController < ActionController::Base
  def page_not_found
    render :file => "#{Rails.root}/public/404.html", :status => 404
  end
end