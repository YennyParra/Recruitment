class AddJobofferToCandidate < ActiveRecord::Migration[7.0]
  def change
    add_reference :candidates, :joboffer, null: false, foreign_key: true
  end
end
