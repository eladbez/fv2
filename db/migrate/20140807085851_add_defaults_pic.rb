class AddDefaultsPic < ActiveRecord::Migration
   def up
    remove_column("feasts", "image")
    add_column("feasts", "image", :string, default: "../compet_normal.jpg")
    remove_column("users", "image")
    add_column("users", "image", :string, default: "../user_normal.jpg")
    remove_column("dishes", "image")
    add_column("dishes", "image", :string, default: "../dog_normal.jpg")
  end
  
  def down
    remove_column("feasts", "image")
    add_column("feasts", "image", :string)
    remove_column("users", "image")
    add_column("users", "image", :string)
    remove_column("dishes", "image")
    add_column("dishes", "image", :string)
  end
end
