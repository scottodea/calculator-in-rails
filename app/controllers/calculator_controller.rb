class CalculatorController < ApplicationController
    def index
    end

    def calculate
    @x = params[:x]
    @y = params[:y]
    @operation = params[:operation]
    unless @x.match(/[a-z A-Z]/) or @y.match(/[a-z A-Z]/)
      if @operation == "add"
        @result = @x.to_i + @y.to_i
      elsif @operation == "subtract"
        @result = @x.to_i - @y.to_i
      elsif @operation == "divide"
        @result = @x.to_f/@y.to_f
      elsif @operation == "multiply"
        @result = @x.to_i * @y.to_i
      end
    else 
      @result = "Error"
  end
    
    render "index"
    end
end
  