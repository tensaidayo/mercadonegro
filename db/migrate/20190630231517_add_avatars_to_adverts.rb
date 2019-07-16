class AddAvatarsToAdverts < ActiveRecord::Migration[5.2]
  def change
    add_column :adverts, :avatars, :json
  end
end
