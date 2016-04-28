class CreateRescues < ActiveRecord::Migration
  def change
    create_table :rescues do |t|
      t.string :title
      t.string :url
      t.string :tag
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
