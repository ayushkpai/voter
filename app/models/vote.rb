class Vote < ApplicationRecord
  validates :choice, presence: true, inclusion: { in: ["Loved It", "Liked It", "Tried It"] }
end

