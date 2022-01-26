class Site::SearchController < SiteController
  def questions
    puts params[:page]
    @questions = Question.search(params[:term], page: params[:page], per_page: 20)
  end

  def subject
    @questions = Question._search_subject_(params[:page], params[:subject_id])
  end
end