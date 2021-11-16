class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def edit
  end

  def show
    @user = User.find(params[:id])

    @questions = @user.questions.order(created_at: :desc)

    @new_question = Question.new

    @answers = @user.questions.count(&:answer)
    @unanswered_questions = @questions.size - @answers
  end
end
