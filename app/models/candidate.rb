class Candidate < ApplicationRecord
    has_and_belongs_to_many :joboffer 
end
