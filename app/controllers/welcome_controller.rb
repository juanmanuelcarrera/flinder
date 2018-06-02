class WelcomeController < ApplicationController

   def index
      @packages = Package.desc(:created_at)
   end

end
