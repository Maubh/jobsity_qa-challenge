#contact_us
Given('the user is on the home page') do
  @home_page.accessHome
end

Given('click to contact us') do
    @home_page.contactUs
  end

When('fill in the fields {string},{string},{string},{string}') do |subject, email, order, txtMessage|
  @contact_us_page.fill_form(subject,email,order,txtMessage)
end
  
When('send a message without filling the form fields') do
  @contact_us_page.sendMessage
end

# When('leave a required field blank {string},{string},{string},{string}') do |subject, email, order,txtMessage|
#   @contact_us_page.fill_form(subject,email,order,txtMessage)
# end


  Then('a success message is displayed in the page') do
    expect(@contact_us_page.getSuccessMsg).to eql("Your message has been successfully sent to our team.")
  end

  Then('an error message is displayed in the page') do
    #expect(@contact_us_page.getErrorMsg).to eql message
    expect(@contact_us_page.getErrorMsg).to have_content("There is 1 error")
  end

  Then('an error message is displayed in the page informing that the email is invalid') do
    expect(@contact_us_page.getErrorMsg).to have_content("Invalid email address")
  end
  
  Then('an error message {string} is displayed on the page') do |errorMessage|
    # expect(@contact_us_page).to have_css(@errorMsg)
    expect(@contact_us_page.getErrorMsg).to have_content(errorMessage)
  end