class EnrollmentsController < ApplicationController
  before_action :require_signin


  def index
    @enrollments = current_user.enrollments
  end


  def new
    @enrollment = Enrollment.new(course_id: params[:course_id])
  end

  def create
    @enrollment = Enrollment.create(user_id: current_user.id, course_id: params[:course_id])
    redirect_to user_enrollments_path(current_user.id)
  end

  def show
    @enrollment = Enrollment.find_by(id: params[:id])
  end

  def destroy
    @enrollment = Enrollment.find_by(id: params[:id])
    @enrollment.destroy
    redirect_to user_enrollments_path(current_user.id)
  end

end
