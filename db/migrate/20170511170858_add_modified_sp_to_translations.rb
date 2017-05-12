class AddModifiedSpToTranslations < ActiveRecord::Migration[5.0]
  def change
    add_column :translations, :modified_sp, :string
  end
end
