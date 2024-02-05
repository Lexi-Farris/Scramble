class CreateUserWords < ActiveRecord::Migration[7.0]
  def change
    create_table :user_words do |t|
      t.string :word
      t.integer :word_value

      t.timestamps
    end
  end
end
