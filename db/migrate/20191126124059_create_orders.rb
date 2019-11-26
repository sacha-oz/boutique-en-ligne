class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
        t.timestamps
        
    end
  end
end
