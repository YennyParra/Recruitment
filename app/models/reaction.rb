class Reaction < ApplicationRecord
  belongs_to :joboffer
  belongs_to :user
  has_many :joboffers

  validates :kind, acceptance: {
    accept: %w[postular],
  }
  def self.kinds
    %w[postular]
end
end