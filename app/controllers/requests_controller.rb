class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]
  def index
  end
  
  def new
    @request = Request.new
    @host_id = params[:host_id]
  end

  def create
    @request = current_user.requests.build(request_params)
    # @request.host_id = params[:host_id]
    if @request.save
      redirect_to user_path(current_user.id)
      # ContactMailer.contact_mail(@request).deliver 
    else
      redirect_to root_path
    end
  end

  def edit
    unless @request_params = current_user then
      redirect_to users_mypage_path
    end
  end

  def update
    if @request.update(request_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def show
    @request = Request.find(params[:id])
  end

  def destroy
    unless @request.user_id = current_user.id then
      redirect_to root_path
    else
      @request.destroy
      redirect_to root_path
    end
  end

  def made
    @user = User.find_by(id: current_user.id)
    @requests = @user.requests
  end

  def gets
    @user = User.find_by(id: current_user.id)
    @requests = Request.where(host_id: current_user.id)
  end
  
  private

  def request_params
    params.require(:request).permit(
      :title,
      :content,
      :host_id,
      :proposal_deadline,
      :budget_estimate,
      :skype_id,
      :host_id
      )
  end

  def set_request
    @request = Request.find(params[:id])
  end
end
