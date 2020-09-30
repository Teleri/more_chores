class CreateChores < ActiveRecord::Migration[6.0]
  def change
    create_table :chores do |t|
      t.string :title
      t.string :description
      t.integer :priority
      t.boolean :complete
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
