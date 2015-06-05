class ExampleController < ApplicationController
  def test
  	@current_time = Time.now
  	@current_year = Date.today.year
  end
end
