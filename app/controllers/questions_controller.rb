class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    #選択された授業の質問一覧を表示する
  end

  def show
    #質問の個別ページ
  end

  def new
    @question = Question.new
  end
  
  def create
    @question = Question.new(
      title: params[:question][:title],
      content_question: params[:question][:content_question],
      user_id: current_user.id,
      subject_id: #授業カテゴリが選択されたときに、カテゴリを示す数字を受け取ってここに入れる
      )
    if @question.save
      redirect_to questions_show_path
    else
      render "new"
    end
  end

  def edit
  end

  def destroy
  end

  def search
  end
end
