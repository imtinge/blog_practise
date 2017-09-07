class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  before_validation :generate_friendly_id, on: [:create, :update]

  def to_param
    friendly_id
  end

  private

  def generate_friendly_id
    self.friendly_id = PinYin.permlink(title)
  end
end
