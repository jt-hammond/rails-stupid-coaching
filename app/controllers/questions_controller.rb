class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @your_message = params[:query]
    if @your_message.eql? "I am going to work right now!"
      @answer = ""
    elsif @your_message.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif @your_message.eql? @your_message.upcase
      @answer = coach_answer_enhanced(@your_message)
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if @your_message.eql? "I AM GOING TO WORK RIGHT NOW!"
      return ""
    else
      if @your_messzage.eql? "I am going to work right now!"
        @answer = "I can feel your motivation! "
      elsif @your_message.include? "?"
        "I can feel your motivation! Silly question, get dressed and go to work!"
      else
        return "I can feel your motivation! I don't care, get dressed and go to work!"
      end
    end
  end
end

