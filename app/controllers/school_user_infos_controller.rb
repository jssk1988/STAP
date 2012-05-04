class SchoolUserInfosController < ApplicationController

  def index
    @school_user_infos = SchoolUserInfo.all
  end

  def show
    @school_user_info = SchoolUserInfo.find(params[:id])
  end

  def new
    @school_user_info = SchoolUserInfo.new
    @title = "申请科研人员信息"
  end

  def edit
    @school_user_info = SchoolUserInfo.find(params[:id])
    @title = "修改信息"
  end

  def create

    @school_user_info = current_user.build_school_user_info(params[:school_user_info])
    if @school_user_info.save
      flash[:notice] = "申请成功，请稍后~"
      redirect_to current_user
    else
      flash.now[:error] = "填写信息不合格"
      render action: "new"
    end
  end

  def update
    @school_user_info = SchoolUserInfo.find(params[:id])
    if @school_user_info.update_attributes(params[:school_user_info])
      flash[:notice] = "更新成功啦~"
      redirect_to @school_user_info
    else
      flash.now[:error] = "更新失败"
      render action: "edit"
    end
  end

  def destroy
    @school_user_info = SchoolUserInfo.find(params[:id])
    @school_user_info.destroy

    flash[:notice] = "删除成功~"
    redirect_to current_user
  end

end