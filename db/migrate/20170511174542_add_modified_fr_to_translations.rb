class AddModifiedFrToTranslations < ActiveRecord::Migration[5.0]
  def change
    add_column :translations, :modified_fr, :string
  end
end
