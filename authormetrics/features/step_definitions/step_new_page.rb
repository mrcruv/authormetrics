

Given(/^I am on the author:"wT4V7isAAAAJ" page$/) do
    visit "/authors/wT4V7isAAAAJ"
end

Then(/ADD AUTHOR RATING/) do |text|
    page.has_content?(text)
end