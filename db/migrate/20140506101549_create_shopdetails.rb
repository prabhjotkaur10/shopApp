class CreateShopdetails < ActiveRecord::Migration
  def change
    create_table :shopdetails do |t|
    	t.string "artName"
    	t.string "artDesc"
    	t.decimal "artPrice"
      t.timestamps
    end
  end
end
