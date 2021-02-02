class CreateCustaccs < ActiveRecord::Migration[6.1]
  def change
    create_table :custaccs do |t|
      t.integer :accno
      t.string :acctype

      t.timestamps
    end
  end
end
