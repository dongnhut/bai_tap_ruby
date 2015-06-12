class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  # GET /accounts
  # GET /accounts.json
  def index
    @accounts = Account.where(gender:'nam')
  
end

  # GET /accounts/1
  # GET /accounts/1.json
 def show
  @account = Account.find(params[:id])
  @is_admin = current_user && current_user.id == @account.id
end

# GET /farmers/new
def new
  if current_user
    redirect_to root_path, :notice => "You are already registered"
  end
  @account = Account.new
end

# GET /farmers/1/edit
def edit
  @account = Account.find(params[:id])
  if current_user.id != @account.id
    redirect_to @account
  end
end

  # POST /accounts
  # POST /accounts.json
  def create
  @account = Account.new(account_params)

  if @account.save
    session[:account_id] = @account.id
    redirect_to @account, notice: 'account was successfully created.'
  else
    render action: "new"
  end
end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account).permit(:name, :password, :gender, :user_access_token, :user_account_id)
    end
end
