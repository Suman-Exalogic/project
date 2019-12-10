class UsersController < ApplicationController
  def index
  	@user = User.all
  end

  def new

  end

  def form_2
    @user =User.find(params[:id])
    session[:temp] = params[:id]
  end

  def create
  	@user = User.new(user_params)
    @msg
  	if @user.save
      @user.update(empid: (@user.id.to_s.rjust(3,"0")))
      redirect_to salary_path(@user)
  	else
    @msg = "***Please check your mail id and password ***"
  	render 'new'
  	end
  end

def temp
    @user =User.find(session[:temp])
    @user.update(bp: params[:bp],bacc: params[:bacc],hra: params[:hra],nol: params[:nol],reim: params[:reim],
      cca: params[:cca],sa: params[:sa],ta: params[:ta],gsal: params[:gsal],it: params[:it],
      pt: params[:pt],lop: params[:lop],od: params[:od],ns: params[:ns], month: params[:month], year: params[:year])
    # if @user.update(userparams)
    #   redirect_to @user
    # else
    #   redirect_to ''
    # end
    redirect_to user_path(@user)
end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(userparams)
      redirect_to salary_path(@user)
    else
      render 'edit'
    end
  end

  def show
    @user = User.find(params[:id])

  end

  def show_2
    @user = User.find(params[:id])
    @user.it = itax(@user.gsal*12) if @user.gsal != nil
    # @user.bp, @user.hra, @user.cca, @user.sa, @user.ta, @user.reim, @user.it, @user.pt, @user.lop, @user.od, @user.gsal, @user.nol, @user.ns = nil?(@user.bp, @user.hra, @user.cca, @user.sa, @user.ta, @user.reim, @user.it, @user.pt, @user.lop, @user.od, @user.gsal, @user.nol, @user.ns)
  end


  def destroy
    @user = User.find(params[:id])
    @user.delete
    redirect_to '/users'
  end


  def payslip
    @user = User.find(params[:id])
    end
 def payslip_1
  @user = User.find(params[:id])

  pdf = WickedPdf.new.pdf_from_string( #1
    render_to_string('payslip_1', layout: false)) #2
    send_data(pdf, #3
    filename: 'payslip_1.pdf', #4
    type: 'application/pdf', #5
    disposition: 'attachment') #6

 end


  def itax(sal)
    if sal>0 && sal<=250000
      return 0
    elsif sal>250000 && sal<500000
      return (sal-250000)*5/100
    elsif sal>500000 && sal<1000000
      return (sal-500000)*20/100
    else
      return (sal-1000000)*30/100
  end
end

  private

  def user_params
  	params.require(:login).permit(:doj,:department,:designation,:bacc,:empid,:fname,:lname,:dob,:email,:mobile,:gender,:address,:city,
  		:state,:country,:pincode,:blood,:ename,:econtact,:pskill,:sskill1,:sskill2,
  		:role,:password,:password_confirmation,:month,:year)
  end

  def userparams
  	params.require(:user).permit(:doj,:department,:designation,:bacc,:empid,:fname,:lname,:dob,:email,:mobile,:gender,:address,:city,
  		:state,:country,:pincode,:blood,:ename,:econtact,:pskill,:sskill1,:sskill2,
  		:role,:password,:password_confirmation,:bp,:month,:year, :hra ,:nol, :cca, :sa ,:ta ,:reim ,:gsal, :it, :pt, :lop, :od ,:ns)
  end

  def tempparams
    params.require(:user).permit(:bp,:month,:year, :hra ,:nol, :cca, :sa ,:ta ,:reim ,:gsal, :it, :pt, :lop, :od ,:ns)
  end
end
