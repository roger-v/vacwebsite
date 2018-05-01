
Given(/^at homepage$/)do
    visit "/"
end

When(/^I go to pilots and planes$/) do
    visit "/pilots"
end

When(/^I go to pilot application$/) do
    visit "pilots/form"
end

Then(/^I should see submit form button$/) do
    expect(page).to have_button('Submit Application')
end
