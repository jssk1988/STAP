module SchoolArticleHelper
  def join_tags(school_article)
    school_article.school_keywords.map { |t| t.name }.join(", ")
  end
end
