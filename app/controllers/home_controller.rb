class HomeController < ApplicationController
  def index
    @school_articles = Home.get_school_articles
    @company_articles = Home.get_company_articles
  end
  def admin_index
  end
  def help
  end
  def apply
  end

end
