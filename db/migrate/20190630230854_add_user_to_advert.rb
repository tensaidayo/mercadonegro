class AddUserToAdvert < ActiveRecord::Migration[5.2]
  def change
    add_column :adverts, :user_id, :integer
  end
end
