class CreateLongPages < ActiveRecord::Migration
  def change
    create_table :long_pages do |t|
      t.string :title
      t.text :body
      t.string :number
    end
  end
end
