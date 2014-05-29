class AddUserRefToEnrollments < ActiveRecord::Migration
  def change
    add_reference :enrollments, :user, index: true
  end
end
