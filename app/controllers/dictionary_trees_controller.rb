class DictionaryTreesController < ApplicationController
  def new_root
  end

  def create
    @dictionary_tree = DictionaryTree.new
    @dictionary_tree.name= params[:name]
    if @dictionary_tree.save
      flash[:success] = "新建父节点成功"
      redirect_to '/users'
    else
      flash.now[:error] = "新建父节点失败~"
      render "new_root"
    end
  end
end