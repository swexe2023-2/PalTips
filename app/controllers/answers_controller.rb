class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  # def new
  #   @answer = Answer.new
  # endform_with model: 
  
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    @answer.user_id = current_user.id
    if @answer.save
      redirect_to question_path(id: @answer.question_id)
    else
      puts @answer.errors.full_messages
      render "new"
    end
  end

  def show
  end

  # def edit
  #   @answer = Answer.find(params[:id])
  # end
  
  def update
    answer = Answer.find(params[:id])
    if answer.update(answer_params)
      #flash[:notice] = '1レコード更新しました'
      redirect_to question_path(id: answer.question_id)
    else
      render 'edit'
    end
  end

  def destroy
    print("destroy起動")
    delete_answer = Answer.find(params[:id])
    delete_answer_questionID = delete_answer.question_id
    delete_answer.destroy
    redirect_to question_path(id: delete_answer_questionID)
  end
  
  private
  def answer_params
    params.require(:answer).permit(:content_answer)
  end
end
