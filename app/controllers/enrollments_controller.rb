class EnrollmentsController < ApplicationController
  before_action :require_signin
  before_action :find_enrollment, only: [:show, :destroy]


  def index
    @enrollments = current_user.enrollments
  end

  def create
    @enrollment = Enrollment.create(user: current_user, course_id: params[:course_id])
    redirect_to user_enrollments_path(current_user.id)
  end

  def show
  end

  def destroy
    @enrollment.destroy
    redirect_to user_enrollments_path(current_user.id)
  end

  private
    def find_enrollment
      @enrollment = Enrollment.find_by(id: params[:id])
    end
end
