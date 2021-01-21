class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  # skip_before_action :authorized, only: [:create, :login]


  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    puts('* * * Users: Create endpoint hit')
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      # byebug
      flash[:danger] = "Looks like we've seen you before. Try signing in instead of signing up"
      redirect_to signup_path
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def login
    # byebug
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      token = encode_token({user_id: user.id})
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {error: "Incorrect Username or Password"}
    end
  end 

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :password_digest, :monthly_income, :monthly_bills, :leftover_money, :four01k, :four01k_match, :four01k_contribution, :credit_card_debt, :single, :singleMax, :singleBetween, :earned_income, :below_50, :below_70_half, :roth_eligable, :roth_max, :filing_jointly, :married_max, :married_between, :earn_less_than_min, :monthly_spending)
    end
end