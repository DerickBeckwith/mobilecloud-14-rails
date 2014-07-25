class ServletController < ApplicationController
  def echo
    @msg=params[:msg]
    render 'servlet/echo.txt.erb', content_type: 'text/plain', status: 200
  end
end