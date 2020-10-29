class CreateMyTabels < ActiveRecord::Migration[5.0]
  def change
    create_table :my_tabels do |t|
      t.string :nume
      t.string :altceva
      t.string :cv

      t.timestamps
    end
  end
end
