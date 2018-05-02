
Given(/^on the homepage$/)do
    visit "/"
end

When(/^I go to sign up page$/) do
    visit('/signup')
end

Then(/^I see sign up button$/) do 
    page.has_button?('Sign up')
end
