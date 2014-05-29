require 'spec_helper'

describe 'User can login' do
  let(:user) { FactoryGirl.create(:user) }

  it 'has the title ShareTheBaton' do
    visit root_path
    expect(page).to have_content 'ShareTheBaton'
  end

  it 'allows the user to log in' do
    visit '/signin'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
    expect(page).to have_content user.name
  end

end
