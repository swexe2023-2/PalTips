class QuestionsController < ApplicationController
  def index
    puts params[:subject_id]
    if params[:subject_id]
      @questions = Question.where(subject_id: params[:subject_id])
    else
      @questions = Question.all
    end
    
    if params[:sort] == "newest"
      @questions = @questions.order(created_at: :desc)
    elsif params[:sort] == "oldest"
      @questions = @questions.order(created_at: :asc)
    end
  end

  def new
    @question = Question.new
    
  end
  
  def create
    puts "create起動"
    # puts params[:question][:title]
    # puts params[:question][:content_question]
    # puts current_user
    # puts params[:question][:subject_id]
    # @question = Question.new(
    #   title: params[:question][:title],
    #   content_question: params[:question][:content_question],
    #   user_id: current_user.id,
    #   subject_id: params[:question][:subject_id],
    
    # )
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    puts @question
    if @question.save
      redirect_to question_path(id: @question.id)
    else
      puts @question.errors.full_messages
      render "new"
    end
  end
  
  def show
    @question = Question.find(params[:id])
    #質問の個別ページを表示
    @answers = @question.answers
  end

  def edit
    @question = Question.find(params[:id])
  end
  
  def update
    question = Question.find(params[:id])
    if question.update(question_params)
      #flash[:notice] = '1レコード更新しました'
      redirect_to question_path(id: question.id)
    else
      render 'edit'
    end
  end

  def destroy
    print("destroy起動")
    delete_question = Question.find(params[:id])
    delete_question.destroy
    redirect_to root_path
  end

  def search
    puts "search起動"
    puts params
    @questions = Question.where("title LIKE ? OR content_question LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    render 'index'
  end
  
  private
    def question_params
      params.require(:question).permit(:title, :content_question, :subject_id)
    end
end
