class FoodItem < ApplicationRecord
  belongs_to :section

  def image_ur_or_default
    defaul_image_url = 'http://committoinclusion.org/wp-content/uploads/2015/05/YOUR-LOGO-HERE-450x450.png'
    image_url.present? ? image_url : defaul_image_url
  end

end
