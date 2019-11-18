class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    if @answer.upcase == 'I AM GOING TO WORK'
      @coach_says = 'Great!'
    elsif @answer.include?('?')
      @coach_says = 'Silly question get dressed and go to work!'
    else
      @coach_says = "I don't care, get dressed and go to work!"
    end
  end
end
