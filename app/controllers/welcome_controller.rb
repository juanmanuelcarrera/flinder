class WelcomeController < ApplicationController

   def index
      @packages = Package.all
   end

end
