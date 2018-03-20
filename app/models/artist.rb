class Artist < ActiveRecord::Base
  # validates :name, require: true
  # validates :bio, require: true
  has_many :songs
end
