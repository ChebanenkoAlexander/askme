class UsersController < ApplicationController
    def index
    end
    def new
    end
    def edit
    end
    def show
        @user = User.new(
            name: 'Roman',
            username: 'Romashka',
            avatar_url: 'https://secure.gravatar.com/avatar/71269686e0f757ddb4f73614f43ae445?s=100' 
             )
             @questions = [ 
                Question.new(text: 'Как дела?', created_at: Date.parse('26.03.1991')),
                Question.new(text: 'Возьмете меня на работу?', created_at: Date.parse('26.03.1991'))
             ]
    end
end
