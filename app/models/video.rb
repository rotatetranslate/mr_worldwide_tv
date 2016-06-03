class Video < ActiveRecord::Base
  has_and_belongs_to_many :tags

  validates :youtube_id, presence: true, uniqueness: true
  validates :title, presence: true
  before_save :set_released_on

  # probably best to make a set_defaults method and call w/ before_save

  def set_released_on
    self.released_on ||= Date.today
  end

end
