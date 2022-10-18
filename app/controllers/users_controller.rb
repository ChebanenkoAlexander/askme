class UsersController < ApplicationController
    def index
        @users = [
User.new(
    id:1,
    name: 'AlexanderChebanenko',
    username: 'ChebaloveSeva'

),
User.new(
    id:2, 
    name: 'igor',
    username: 'iiiggor',
              avatar_url: 'https://secure.gravatar.com/avatar/71269686e0f757ddb4f73614f43ae445?s=100' 

)
        ]
    end
    def new
    end
    def edit
    end
    def show
        @user = User.new(
            name: 'AlexanderChebanenko',
            username: 'ChebaloveSeva',
             )
             @questions = [ 
                Question.new(text: 'Как дела?', created_at: Date.parse('26.03.1991')),
                Question.new(text: 'Возьмете меня на работу?', created_at: Date.parse('26.03.1991'))
             ]
             @new_question = Question.new
    end
end
