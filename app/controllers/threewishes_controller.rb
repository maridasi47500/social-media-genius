class ThreewishesController < ApplicationController
  def hello
    @mycard=JSON.parse(params[:mycard])
  end
end
