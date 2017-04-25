require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the task path', {:type => :feature} do
  it 'it processes the user entry and returns to do list' do
    visit '/'
    fill_in 'description', :with => 'wash the lion'

    click_button ('Add task')
    expect(page).to have_content ''

    click_link ('Back')
    expect(page).to have_content 'wash the lion'
  end
end
