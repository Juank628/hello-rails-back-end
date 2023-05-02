class GreetingsController < ApplicationController
  def show
    greetings = Greeting.all
    random_greeting = greetings[rand(greetings.length - 1)]

    return unless random_greeting

    render json: { data: random_greeting }
  end
end
