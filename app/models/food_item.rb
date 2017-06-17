class FoodItem < ApplicationRecord
  belongs_to :section

  def image_ur_or_default
    defaul_image_url = "http://loremflickr.com/320/240/#{name.gsub(' ','+')}"
    image_url.present? ? image_url : defaul_image_url
  end

end
