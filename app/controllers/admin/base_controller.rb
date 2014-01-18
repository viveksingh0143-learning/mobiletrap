module Admin
  class BaseController < ApplicationController
    layout "subscriber"
    before_action :authorize
  end
end