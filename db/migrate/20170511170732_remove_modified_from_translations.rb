class RemoveModifiedFromTranslations < ActiveRecord::Migration[5.0]
  def change
    remove_column :translations, :modified, :string
  end
end
