class Joboffer < ApplicationRecord
    has_many :reactions, dependent: :destroy
    has_many :Candidates

    kinds = %w[postular].freeze
    kindsSpanish ={ "postular"=>"postular"}.freeze

end
