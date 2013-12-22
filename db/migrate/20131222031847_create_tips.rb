class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :title
      t.text :info
      t.text :category

      t.timestamps
    end
  end
end
