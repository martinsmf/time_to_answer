class Site::AnswerController < SiteController
  def question
    @answer = Answer.find(params[:answer_id])
    UserStatistic.set_statistc(@answer, current_user)
  end
end
