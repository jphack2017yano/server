class CreateTestapis < ActiveRecord::Migration[5.1]
  def change
    create_table :testapis do |t|
      t.string :name
      t.integer :age
      t.text :description

      t.timestamps
    end
  end
end
