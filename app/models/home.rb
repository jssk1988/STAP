class Home
  def Home.get_school_articles
    SchoolArticle.order("created_at DESC").limit(5)
  end

  def Home.get_company_articles
    CompanyArticle.order("created_at DESC").limit(5)
  end
end