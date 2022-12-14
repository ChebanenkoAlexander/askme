class QuestionsController < ApplicationController
  before_action :load_question, only: [:show, :edit, :update, :destroy]
before_action :authorize_user, except: [:create]
  def edit
  end

  # POST /questions or /questions.json
  def create
    @question = Question.new(question_params)
      if @question.save
        redirect_to user_path(@question.user), notice: 'Вопрос задан.'
      else
render :edit
      end
    end

  # PATCH/PUT /questions/1 or /questions/1.json
  def update
      if @question.update(question_params)
        redirect_to user_path(@question.user), notice: 'Вопрос сохранен'
      else
render :edit
      end
    end

  # DELETE /questions/1 or /questions/1.json
  def destroy
  user = @question.user
    @question.destroy

    redirect_to user_path(user), notice: 'Вопрос удален'
    end

  private
    def load_question
      @question = Question.find(params[:id])
    end

    def authorize_user
      reject_user unless @question.user == current_user
  end

    def question_params
     if current_user.present? && params[:question][:user_id].to_i == current_user.id
      params.require(:question).permit(:user_id, :text, :answer)
     else
      params.require(:question).permit(:user_id, :text)
     end
    end
end
