class Tag < ActiveRecord::Base
  validates :word, presence: true, uniqueness: true

  validate :starts_with_octothorpe

  def starts_with_octothorpe
    errors.add(:hash_tag, "All tags must begin with a '#'") unless word[0] == '#'
  end

end
