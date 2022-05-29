class ThreemonthsGoal < ApplicationRecord
  belongs_to :user, optional: true
  validates :user_id, presence: true    #空の値ではないこと
  validates :content, presence: true, length: { maximum: 140 }
  attr_accessor :collection
end

