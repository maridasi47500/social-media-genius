class CreateLogements < ActiveRecord::Migration[8.1]
  def change
    create_table :logements do |t|
      t.string :title
      t.string :pic

      t.timestamps
    end
  end
end
