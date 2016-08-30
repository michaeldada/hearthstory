class Match < ApplicationRecord
  validates :outcome, presence: true
  validates :user_class, presence: true
  validates :opp_class, presence: true
end
