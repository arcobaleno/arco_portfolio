class CreateRequestsTable < ActiveRecord::Migration
  def change
  	create_table "requests", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "website"
  	end
  end
end
