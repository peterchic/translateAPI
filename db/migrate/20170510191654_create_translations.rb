class CreateTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :translations do |t|
      t.string :original
      t.string :modified

      t.timestamps
    end
  end
end
