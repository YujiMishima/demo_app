class CreateYujiMishimas < ActiveRecord::Migration
  def change
    create_table :yuji_mishimas do |t|
      t.string :yuji1510@gmail.com

      t.timestamps null: false
    end
  end
end
