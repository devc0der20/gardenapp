class PagesController < ApplicationController
  def home
    @user = User.first
    @msg = 'no error yet'
    # @password ='1test'
  end
 
  def check_password
    if params[:pin] == User.first.pin
      redirect_to success_path 
    else 
      redirect_to failure_path 
    end
  end

  def success
  end

  def failure
  end
end
