class CreatePositivePhrases < ActiveRecord::Migration
  def change
    create_table :positive_phrases do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
