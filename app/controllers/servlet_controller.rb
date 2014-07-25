class ServletController < ApplicationController
  def echo
    @msg=params[:msg]
  end
end