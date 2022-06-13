class Report < ApplicationRecord
  belongs_to  :user, optional: true
  validates   :user_id, presence: true    #空の値ではないこと
  has_one     :participating, dependent: :destroy
end
