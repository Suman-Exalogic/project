class UsersController < ApplicationController
  def index
  	@user = User.all
  end

  def new
  end

  def create
  	@user = User.new(user_params)
    @msg
  	if @user.save
  		redirect_to @user
  	else
    @msg = "***Password Mismatch***"
  	render 'new'
  	end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(userparams)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    redirect_to '/users'
  end


  private

  def user_params
  	params.require(:login).permit(:fname,:lname,:dob,:email,:mobile,:gender,:address,:city,
  		:state,:country,:pincode,:blood,:ename,:econtact,:pskill,:sskill1,:sskill2,
  		:role,:password,:password_confirmation)
  end

  def userparams
  	params.require(:user).permit(:fname,:lname,:dob,:email,:mobile,:gender,:address,:city,
  		:state,:country,:pincode,:blood,:ename,:econtact,:pskill,:sskill1,:sskill2,
  		:role,:password,:password_confirmation)
  end
end
