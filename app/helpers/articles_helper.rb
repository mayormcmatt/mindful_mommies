module ArticlesHelper
  def article_params
    # strong params for article creation, tagging
    params.require(:article).permit(:title, :body, :tag_list)
  end
end
