class AddModifiedItToTranslations < ActiveRecord::Migration[5.0]
  def change
    add_column :translations, :modified_it, :string
  end
end
