class CalculatorController < ApplicationController

  def result
    height = params[:height].to_f/100
    weight = params[:weight].to_f

    @bmi = (weight / (height * height)).round(2)
  end
end
