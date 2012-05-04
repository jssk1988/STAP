class SchoolArticlesController < ApplicationController
  def index
    @school_articles = SchoolArticle.all
  end

  def new
    @school_article = SchoolArticle.new
    @title = "发表科研成果"
  end

  def edit
    @school_article = SchoolArticle.find(params[:id])
    @title = "修改您发表的科研成果"
  end

  def show
    @school_article = SchoolArticle.find(params[:id])
  end

  def create
    @school_article = current_user.school_articles.create(params[:school_article])
    if @school_article.save
      @school_article.school_keywords.create(params[:school_keyword])
      flash[:notice] = "发表成功，请稍后~"
      redirect_to @school_article
    else
      flash.now[:error] = "填写信息不合格"
      render action: "new"
    end
  end

  def update
    @school_article = SchoolArticle.find(params[:id])
    if @school_article.update_attributes(params[:school_articles])
      flash[:notice] = "更新成果啦~"
      redirect_to @school_article
    else
      flash.now[:error] = "更新失败"
      render action: "edit"
    end

  end

  def destroy
    @school_article = SchoolArticle.find(params[:id])
    @school_article.destroy

    flash[:notice] = "删除成功~"
    redirect_to current_user
  end

end
