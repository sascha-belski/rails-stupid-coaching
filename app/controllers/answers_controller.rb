class AnswersController < ApplicationController
    def answer
        @student_ask = params[:answer] if params[:answer];
        @coach_answer = coach_reaction(@student_ask);
    end

    private

    def coach_reaction(student_ask)
        if student_ask.strip! == "I am going to work"
            return "Great!";
        elseif student_ask.contains?("?")
            return "Silly question, get dressed and go to work!";
        else
            return "I don't care, get dressed and go to work!";
        end
    end
end
