
Given(/^I am on root page$/)do
    visit "/"
end

When(/^I go to corporarte sponsors page$/) do
    visit('/corporate_recognition')
end

Then(/^I should see all the sponsors$/) do
    page.has_content?('Corporate Sponsors')
end


Given(/^I am on the root page$/)do
    visit "/"
end

When(/^I go to advisory board page$/) do
    visit('/advisory_board')
end

Then(/^I should see the members$/) do
    page.has_content?('Our Advisory Board')
end


      
Given(/^I am on the root page!$/)do
    visit "/"
end

When(/^I go to passengers page$/) do
    visit('/passengers')
end

When(/^I go to passenger faq$/) do
    visit('/passengers/faq')
end 

Then(/^I should see pass faq$/) do
    page.has_content?('Passenger Frequently Asked Questions')
end

      
Given(/^I am on the root page@$/)do
    visit "/"
end

When(/^I go to pilot page$/) do
    visit('/pilots')
end

When(/^I go to pilot faq$/) do
    visit('/pilots/faq')
end 

Then(/^I should see pilot faq$/) do
    page.has_content?('Aircraft Frequently Asked Questions')
end


Given(/^I am on the root page%$/)do
    visit "/"
end

When(/^I go to main donate page$/) do
    visit('/donate')
end

When(/^I go to memorial wall$/) do
    visit('/memorial_wall')
end 

Then(/^I should see names$/) do
    page.has_content?('names')
end
