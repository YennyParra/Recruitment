class CreateJoinTableJobofferCandidate < ActiveRecord::Migration[7.0]
  def change
    create_join_table :joboffers, :candidates do |t|
      # t.index [:joboffer_id, :candidate_id]
      # t.index [:candidate_id, :joboffer_id]
    end
  end
end
