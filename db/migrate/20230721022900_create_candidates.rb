class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :photo
      t.string :profession
      t.string :current
      t.string :position

      t.timestamps
    end
  end
end
