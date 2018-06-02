class AdminController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  before_action :check_permissions

  def index

  end
  
  protected

  def check_permissions
    current_user.role == 'admin' or current_user.role == 'agency'
  end


end
