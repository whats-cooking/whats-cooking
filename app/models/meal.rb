class Meal < ActiveRecord::Base

  has_attached_file :image, styles: {
                               thumb: '100x100>',
                               square: '200x200#',
                               medium: '300x300>'
                           }
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :time, presence: true
  validates :price, presence: true, numericality: true

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
