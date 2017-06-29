class CalculatorController < ApplicationController

  def result
    render json: params
  end
end
