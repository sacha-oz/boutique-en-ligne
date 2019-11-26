class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|

	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false 
        t.timestamps
        t.belongs_to :user, index: true 
    end
  end
end
