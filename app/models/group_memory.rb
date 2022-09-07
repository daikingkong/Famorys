class GroupMemory < ApplicationRecord
  belongs_to :end_user
  belongs_to :group

  validates :title, length: {minimum: 1, maximum: 30 }
  validates :memo, length: {maximum: 150 }

  has_one_attached :group_memory_image

end
