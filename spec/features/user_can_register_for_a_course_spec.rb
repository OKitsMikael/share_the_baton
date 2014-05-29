require 'spec_helper'

describe 'User can register for a course' do
  let(:user) { FactoryGirl.create(:user)}

  it 'allows the user to register for an available course' do
    course = FactoryGirl.create(:course)
    login(user)
    click_link "Available Courses"
    click_link course.title
    click_button "Register"
    expect(page).to have_content(course.title)
  end

  it 'allows the user to see registered courses' do
    login(user)
    course = FactoryGirl.create(:course)
    Enrollment.create(user: user, course: course)
    click_link "My Enrollments"
    expect(page).to have_content(course.title)
  end

  def login(user)
  visit "/signin"
  fill_in "Email", with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
  end
end
