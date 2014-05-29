class AddCourseRefToEnrollments < ActiveRecord::Migration
  def change
    add_reference :enrollments, :course, index: true
  end
end
