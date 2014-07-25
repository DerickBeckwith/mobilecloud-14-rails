class Video < ActiveRecord::Base
  validates :title, presence: true
  validates :url, presence: true, length: { maximum: 30 } 
  validates :duration, presence: true, numericality: { only_integer: true }
end
