require 'spec_helper'

feature 'User can CRUD single emails address' do
  scenario 'User can create/submit their emails address' do
    visit '/'
    fill_in 'email[email]', with: 'mark@example.com'
    click_on 'Create Email'
    expect(page).to have_content 'Thank you. You will receive updates at: mark@example.com'
  end
end