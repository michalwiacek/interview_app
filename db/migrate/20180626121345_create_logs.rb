class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :status, default: "new", null: false

      t.timestamps
    end
  end
end
