class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    #選択された授業の質問一覧を表示する
  end

  def new
    @question = Question.new
  end
  
  def create
    puts "create起動"
    puts params[:question][:title]
    puts params[:question][:content_question]
    puts current_user
    puts params[:question][:subject_id]
    @question = Question.new(
      title: params[:question][:title],
      content_question: params[:question][:content_question],
      user_id: current_user.id,
      subject_id: params[:question][:subject_id],
      #授業カテゴリが選択されたときに、カテゴリを示す数字を受け取ってここに入れる
    )
    puts @question
    if @question.save
      redirect_to question_path(id: @question.id)
    else
      puts @question.errors.full_messages
      render "new"
    end
  end
  
  def show
    #質問の個別ページを表示
  end

  def edit
  end

  def destroy
  end

  def search
  end
end
