class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :location
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
