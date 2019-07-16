class AddCategoryToAdvert < ActiveRecord::Migration[5.2]
  def change
    add_column :adverts, :category_id, :integer
  end
end
