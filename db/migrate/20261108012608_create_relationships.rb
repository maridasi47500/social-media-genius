class CreateRelationships < ActiveRecord::Migration[8.1]
  def change
    create_table :relationships do |t|
      t.string :title
      t.string :pic

      t.timestamps
    end
  end
end
