class ServletController < ApplicationController
  def echo
    @msg=params[:msg]
    render 'servlet/echo.txt.erb', content_type: 'text/plain'
  end
end