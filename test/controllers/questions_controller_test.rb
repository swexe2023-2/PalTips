require "test_helper"

class QuestionsControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get questions_url
=======
  test "should get index" do
    get questions_index_url
    assert_response :success
  end

  test "should get show" do
    get questions_show_url
>>>>>>> c14e2c9bc7c10893e9a64b7c18adfa34103a0402
    assert_response :success
  end

  test "should get new" do
<<<<<<< HEAD
    get new_question_url
    assert_response :success
  end

  test "should create question" do
    assert_difference("Question.count") do
      post questions_url, params: { question: { text: @question.text, title: @question.title } }
    end

    assert_redirected_to question_url(Question.last)
  end

  test "should show question" do
    get question_url(@question)
=======
    get questions_new_url
>>>>>>> c14e2c9bc7c10893e9a64b7c18adfa34103a0402
    assert_response :success
  end

  test "should get edit" do
<<<<<<< HEAD
    get edit_question_url(@question)
    assert_response :success
  end

  test "should update question" do
    patch question_url(@question), params: { question: { text: @question.text, title: @question.title } }
    assert_redirected_to question_url(@question)
  end

  test "should destroy question" do
    assert_difference("Question.count", -1) do
      delete question_url(@question)
    end

    assert_redirected_to questions_url
=======
    get questions_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get questions_destroy_url
    assert_response :success
  end

  test "should get search" do
    get questions_search_url
    assert_response :success
>>>>>>> c14e2c9bc7c10893e9a64b7c18adfa34103a0402
  end
end
