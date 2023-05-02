class GreetingsController < ApplicationController
    def show
        greetings = Greeting.all
        randomGreeting = greetings[rand(greetings.length - 1)]

        return unless randomGreeting

        render json: { data: randomGreeting }
    end
end
