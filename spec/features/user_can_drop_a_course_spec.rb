require "spec_helper"

describe "User can drop a course" do
  let(:user) { FactoryGirl.create(:user) }

  it "removes a course from the user's enrollments" do
    login(user)
    course = FactoryGirl.create(:course)
    Enrollment.create(user: user, course: course)
    click_link "My Enrollments"
    click_link course.title
    click_button "Drop This Course"
    expect(page).to_not have_content(course.title)
  end

  def login(user)
  visit "/signin"
  fill_in "Email", with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
  end

end
