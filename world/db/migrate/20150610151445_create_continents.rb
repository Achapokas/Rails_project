class CreateContinents < ActiveRecord::Migration
  def change
    create_table :continents do |t|
      t.string :name
      t.integer :population

      t.timestamps null: false
    end
  end
end
