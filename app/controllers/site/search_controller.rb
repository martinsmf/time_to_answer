class Site::SearchController < SiteController
  def questions
    puts params[:page]
    @questions = Question._search_(params[:page], params[:term])
  end
end
