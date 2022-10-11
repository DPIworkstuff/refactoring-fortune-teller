class FortunesController < ApplicationController
  def horoscopes
    all_zodiacs = Zodiac.list
    @sign = params.fetch("the_sign").to_sym
    this_zodiac = all_zodiacs.fetch(@sign)
    @horoscope = this_zodiac.fetch(:horoscope)
   
    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "fortunes_template/fortunes.html.erb" })
  end
end
