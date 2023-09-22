class Candidate < ApplicationRecord
    has_and_belongs_to_many :joboffer 

    validates :user_id, presence: true
    validates :joboffer_id, presence: true
end
