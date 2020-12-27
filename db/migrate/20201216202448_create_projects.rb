class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.references :user, null: false, foreign_key: true
      t.index [:user_id, :name], unique: true

      t.timestamps
    end
  end
end
