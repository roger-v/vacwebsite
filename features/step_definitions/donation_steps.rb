
Given(/^at homepage$/)do
    visit "/"
end

When(/^I go to the donate page$/) do
    visit('/donate')
end

When(/^I click donate now button/) do
    visit('donate/form')
end

Then(/^I should see the donate form$/) do 
    expect(page).to have_button('Proceed to Payment')
end

