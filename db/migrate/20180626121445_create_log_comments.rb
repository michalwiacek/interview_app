class CreateLogComments < ActiveRecord::Migration[5.1]
  def change
    create_table :log_comments do |t|
      t.references :log, foreign_key: true
      t.text :comment, null: false

      t.timestamps
    end
  end
end
