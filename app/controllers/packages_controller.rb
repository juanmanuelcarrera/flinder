class PackagesController < AdminController
  include TripsHelper
  include EventsHelper
  layout 'admin'

  before_action :load_package, only: [:destroy, :show, :edit, :update]

   def new
     @package = Package.new
     @flights = flight_offers
     @hotels = hotel_offers
   end

   def create
     @package = Package.new(package_params)
     @package.save!
     redirect_to packages_path, :notice => 'Package was successfully created.'
   rescue => e
     render :new
   end

   def index
     @packages = Package.all
   end

   def edit
   end

   def update
     @package.update!(package_params)

     redirect_to package_path(@package), :notice => 'Package was successfully updated.'
   rescue => e
     render :edit
   end

   def show
   end

   def destroy
     @package.destroy
     notice = {notice: 'Package was successfully destroyed.'}
     redirect_to packages_path, notice: 'Package was successfully destroyed.'

    rescue => e
     redirect_to packages_path
   end

  def load_events
    get_events
    redirect_to packages_path
  end

   private

   def load_package
     @package = Package.find(params[:package_id] || params[:id])
   end

   def package_params
     params.require(:package).permit(Package.permitted_params)
   end

end
