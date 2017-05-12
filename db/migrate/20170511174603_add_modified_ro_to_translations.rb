class AddModifiedRoToTranslations < ActiveRecord::Migration[5.0]
  def change
    add_column :translations, :modified_ro, :string
  end
end
