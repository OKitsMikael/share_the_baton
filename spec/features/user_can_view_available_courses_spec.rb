require 'spec_helper'


describe 'User can view available courses' do
  let(:user) { FactoryGirl.create(:user) }
  let(:course) { FactoryGirl.create(:course)}

  it 'shows a list of available courses' do
    login(user)
    click_link "Available Courses"
    expect(page).to have_content(course.title)

  end


  def login(user)
    visit "/signin"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
  end

end
