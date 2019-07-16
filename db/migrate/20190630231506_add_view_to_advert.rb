class AddViewToAdvert < ActiveRecord::Migration[5.2]
  def change
    add_column :adverts, :quantity_view, :integer
  end
end
