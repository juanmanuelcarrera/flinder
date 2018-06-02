class PackageController < ApplicationController


  before_action :load_package, only: [:destroy, :show, :edit, :update]

   def new
     @package = Package.new
   end

   def create
     @package = Package.new(package_params)
     @package.save!
     redirect_to package_index_path, :notice => 'Package was successfully created.'
   rescue => e
     render :new
   end

   def index
     @package = Package.all.page(params[:page])
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
     notice = {notice: 'Game was successfully destroyed.'}
     redirect_to package_index_path(page: params[:page]), notice: 'Game was successfully destroyed.'

    rescue => e
     redirect_to admin_game_index_path(breadcrumb: params[:breadcrumb], page: params[:page])
   end

   private

   def load_package
     @package = Package.find(params[:package_id] || params[:id])
   end

   def package_params
     params.require(:package).permit(Package.permitted_params)
   end

end
