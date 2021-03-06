class UsersController < ApplicationController
  # has_many :clicks
  before_action :cors_preflight_check, :set_user, only: %i[show update destroy]
  skip_before_action :authorized, only: %i[create login]

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
    @user = User.new(user_params)
    # byebug
    if @user.save
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }, status: :created, location: @user
    else
      # byebug
      # flash[:danger] = "Looks like we've seen you before. Try signing in instead of signing up"
      redirect_to signup_path
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def login
    user = User.find_by(username: params[:user][:username])
    # byebug
    if user && user.authenticate(params[:user][:password])
      token = encode_token({ user_id: user.id })
      render json: { user: UserSerializer.new(user), token: token }
    else
      render json: { error: 'Incorrect Username or Password' }
    end
  end

  # PATCH/PUT /users/1
  def update
    # byebug
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

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:username, :password, :monthly_income, :monthly_bills, :leftover_money, :four01k, :four01k_match, :four01k_contribution, :credit_card_debt, :single, :single_max, :single_between, :earned_income, :below_50, :below_70_half, :roth_eligable, :roth_max, :filing_jointly, :married_max, :married_between, :earn_less_than_min, :monthly_spending, :four01k_max_out, :current_step, :cc_1, :cc_2, :cc_3, :pay_schedule, :magi)
  end


  def cors_preflight_check
    if request.method == "OPTIONS"
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS, PUT, PATCH, DELETE'
      headers['Access-Control-Allow-Headers'] = %w{Origin Accept Content-Type X-Requested-With auth_token X-CSRF-Token}.join(',')
      headers['Access-Control-Max-Age'] = '1728000'
      render json: {},status: :accepted
    end
  end
end

