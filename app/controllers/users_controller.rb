class UsersController < ApplicationController
    def index
        @users = [
User.new(
    id:1,
    name: 'Roman',
    username: 'Romashka'
),
User.new(
    id:2, 
    name: 'Sacha',
    username: 'chaba'
)
        ]
    end
    def new
    end
    def edit
    end
    def show
        @user = User.new(
            name: 'Roman',
            username: 'Romashka',
            #avatar_url: 'вставить ссылку на аватарку' 
             )
             @questions = [ 
                Question.new(text: 'Как дела?', created_at: Date.parse('26.03.1991')),
                Question.new(text: 'Возьмете меня на работу?', created_at: Date.parse('26.03.1991'))
             ]
             @new_question = Question.new
    end
end
