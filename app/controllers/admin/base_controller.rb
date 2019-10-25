class Admin::BaseController < ApplicationController
  before_action :ensure_admin
  
  def ensure_admin
    unless current_user and current_user.admin?
      redirect to root_path, flash[:danger] = "ban khong phai admin"
    end
  end
end
