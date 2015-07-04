class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :going_from
      t.text :going_to
      t.time :time
      t.date :date
      t.string :phone_number
      t.references :user, index: true

      t.timestamps
    end
  end
end
