Given(/^I am on the homepage$/)do
    visit "/"
end

When(/^I go to the available missions page$/) do
    visit('/missions')
end

Then(/^I should see the calendar and list of missions$/) do
    expect(page).to have_css 'table'
end

Then(/^I should see the show mission feature$/) do 
    page.has_content?('List')
end

