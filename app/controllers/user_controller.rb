class UserController < AdminController

  before_action :load_user, only: [:destroy, :show, :edit, :update]

   def new
     @user = User.new
   end

   def create
     @user = User.new(user_params)
     @user.save!
     redirect_to user_index_path, :notice => 'User was successfully created.'
   rescue => e
     render :new
   end

   def index
     @users = User.all
   end

   def edit
   end

   def update
     @user.update!(user_params)

     redirect_to user_path(@user), :notice => 'User was successfully updated.'
   rescue => e
     render :edit
   end

   def show
   end

   def destroy
     @user.destroy
     notice = {notice: 'User was successfully destroyed.'}
     redirect_to user_index_path, notice: 'User was successfully destroyed.'

    rescue => e
     redirect_to user_index_path
   end

   private

   def load_user
     @user = User.find(params[:user_id] || params[:id])
   end

   def user_params
     params.require(:user).permit(User.permitted_params)
   end

end
