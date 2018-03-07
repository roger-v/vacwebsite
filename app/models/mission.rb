class Mission < ApplicationRecord
    validates :from, presence: true
    validates :to, presence: true
    validates :passengers, presence: true
    validates :weight, presence: true
end
