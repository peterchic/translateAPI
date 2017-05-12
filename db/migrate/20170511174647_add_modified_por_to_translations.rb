class AddModifiedPorToTranslations < ActiveRecord::Migration[5.0]
  def change
    add_column :translations, :modified_por, :string
  end
end
