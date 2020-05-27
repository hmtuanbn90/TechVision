class ApplicationController < ActionController::Base

    def hello
      render html: "Hello TechVision"
    end

end
