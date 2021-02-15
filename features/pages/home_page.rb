class HomePage
    include Capybara::DSL

    def initialize 
        @linkContactUs = '#contact-link';
    end
    
    def accessHome
        visit '/'
    end

    def contactUs
        find(@linkContactUs).click
    end
  
end