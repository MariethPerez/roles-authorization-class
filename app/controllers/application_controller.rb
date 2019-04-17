class ApplicationController < ActionController::Base
  include Pundit

  def current_user
    User.find_by(email: "jon@snow.com")
    # User.find_by(email: "dany@t.com")
    # User.find_by(email: "tyrion@lannister.com")
  end
end
