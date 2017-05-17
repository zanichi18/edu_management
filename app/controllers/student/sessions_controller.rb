class Student::SessionsController < Devise::SessionsController
  layout "login_layout"

  def new
    super
  end

  def create
    super
  end

  private
  def after_sign_out_path_for student
    root_path
  end

  def after_sign_in_path_for(resource)
    sign_in_url = new_student_session_url
    if request.referer == sign_in_url
      super
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end
end