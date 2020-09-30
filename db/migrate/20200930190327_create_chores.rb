class CreateChores < ActiveRecord::Migration[6.0]
  def change
    create_table :chores do |t|
      t.string :title
      t.string :description
      t.integer :priority
      t.date :due_date
      t.boolean :complete, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
