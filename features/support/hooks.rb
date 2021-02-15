Before do
#   @login_page = LoginPage.new
    @home_page = HomePage.new
#   @profile_page = ProfilePage.new
    @contact_us_page = ContactPage.new
#    @purchase_page = PurchasePage.new

    page.current_window.resize_to(1366, 728)#screen resolution

end

After do |scenario| 
    name = scenario.name.gsub(/[^A-Za-z0-9 ]/, '') #get the file's name and remove special characters
    name = name.tr(' ', '_').downcase! #replace space with _ and leave in lower case
    shot = "log/screenshots/#{name}.png" #defining image directory and file name

    page.save_screenshot(shot)
    #embed(shot, 'image/png', 'Evidence') #including image in the report
    attach(shot, 'image/png')
end

at_exit do
    
      ReportBuilder.configure do |config|
      config.input_path = 'results/cucumber_json'
      config.report_path = 'results/report'
      config.report_types = [:json,:html]
      config.color = 'deep-purple'
      config.report_title = "Jobsity - QA Challenge"
      config.additional_info = {Author: 'Mauricio Vasconcelos', Browser: 'Chrome', Project: 'Automation Practice'}
    end

   ReportBuilder.build_report
end