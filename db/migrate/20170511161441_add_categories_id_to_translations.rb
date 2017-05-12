class AddCategoriesIdToTranslations < ActiveRecord::Migration[5.0]
  def change
    add_column :translations, :category_id, :integer
  end
end
