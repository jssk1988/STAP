class SysRolesController < ApplicationController
  def index

  end

  def show
    @sys_role = SysRole.find(params[:id])
  end

  def new
    @sys_role = SysRole.new
  end

  def create
    @sys_role = SysRole.new(params[:sys_role])
    if @sys_role.save
      flash[:success] ="角色新建成功~"
      redirect_to @sys_role
    else
      flash.now[:error] = "角色新建失败~"
      render "new"
  end
end

  def update

  end

  def destroy

  end
end
