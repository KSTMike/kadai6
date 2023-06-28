class ApplicationController < ActionController::Base
require "application_responder"
  self.responder = ApplicationResponder
  respond_to :html
  include SessionsHelper
  before_action :login_required
  include ActionController::MimeResponds

  private

  def login_required
    redirect_to new_session_path unless current_user
  end
end
