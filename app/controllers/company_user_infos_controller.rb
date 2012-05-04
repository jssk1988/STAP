class CompanyUserInfosController < ApplicationController
  # GET /company_user_infos
  # GET /company_user_infos.json
  def index
    @company_user_infos = CompanyUserInfo.all
  end

  # GET /company_user_infos/1
  # GET /company_user_infos/1.json
  def show
    @company_user_info = CompanyUserInfo.find(params[:id])
  end

  # GET /company_user_infos/new
  # GET /company_user_infos/new.json
  def new
    @company_user_info = CompanyUserInfo.new
    @title = "欢迎申请企业资格"
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @company_user_info }
    end
  end

  # GET /company_user_infos/1/edit
  def edit
    @company_user_info = CompanyUserInfo.find(params[:id])
    @title = "修改企业用户信息"
  end

  # POST /company_user_infos
  # POST /company_user_infos.json
  def create
    @company_user_info = current_user.build_company_user_info(params[:company_user_info])

    if @company_user_info.save
      flash[:notice] = "你已经成功申请了企业用户，请耐心等待"
      redirect_to current_user
    else
      flash.now[:error] = "申请失败，请重新填写"
      render action: "new"
    end
  end

  # PUT /company_user_infos/1
  # PUT /company_user_infos/1.json
  def update
    @company_user_info = CompanyUserInfo.find(params[:id])

    if @company_user_info.update_attributes(params[:company_user_info])
      flash[:notice] = "更新成功~"
      redirect_to @company_user_info
    else
      flash.now[:error] = "更新失败~"
      render action: "edit"
    end
  end

  # DELETE /company_user_infos/1
  # DELETE /company_user_infos/1.json
  def destroy
    @company_user_info = CompanyUserInfo.find(params[:id])
    @company_user_info.destroy

    respond_to do |format|
      format.html { redirect_to company_user_infos_url }
      format.json { head :ok }
    end
  end
end
