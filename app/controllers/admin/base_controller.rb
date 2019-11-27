class Admin::BaseController < ApplicationController
  before_action :logged_in_user
  before_action :check_admin
end
