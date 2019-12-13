class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def euro_thousand_separate(number)
  whole_part, decimal_part = number.to_s.split('.')
  num = [whole_part.gsub(/(\d)(?=\d{3}+$)/, '\1.'), decimal_part].compact.join('.')
  p "#{num},00"
  end
end
