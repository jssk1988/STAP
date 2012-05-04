class CompanyArticlesController < ApplicationController
  def index
    @company_articles = CompanyArticle.all
  end

  def new
    @company_article = CompanyArticle.new
  end

  def show
    @company_article = CompanyArticle.find(params[:id])
  end

  def create
    @company_article = current_user.company_articles.create(params[:company_article])
    if @company_article.save
      flash[:notice] = "发布企业需求成功~"
      redirect_to @company_article
    else
      flash.now[:error] = "填写信息不合格啦~"
      render action: "new"
    end
  end

  def edit
    @company_article = CompanyArticle.find(params[:id])
    @title = "修改您发表的企业需求"
  end

  def update
    @company_article =CompanyArticle.find(params[:id])
    if @company_article.update_attributes(params[:company_article])
      flash[:notice] = "更新企业需求成功~"
      redirect_to @company_article
    else
      flash.now[:error] = "更新企业需求失败啦"
      render action: "edit"
    end
  end

  def destroy
    @company_article = CompanyArticle.find(params[:id])
    @company_article.destroy

    flash[:notice] = "删除成功~"
    redirect_to current_user
  end
end
