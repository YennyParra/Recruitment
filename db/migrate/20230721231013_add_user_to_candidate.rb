class AddUserToCandidate < ActiveRecord::Migration[7.0]
  def change
    add_reference :candidates, :user, null: false, foreign_key: true
  end
end
