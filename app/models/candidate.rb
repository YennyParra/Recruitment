class Candidate < ApplicationRecord
    has_and_belong_to_many :joboffer 
end
