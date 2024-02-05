class CreatePoints < ActiveRecord::Migration[7.0]
  def change
    create_table :points do |t|
      t.string :letter
      t.integer :worth

      t.timestamps
    end
  end
end
