class CreateUserinfos < ActiveRecord::Migration[6.1]
  def change
    create_table :userinfos do |t|
      t.string :name
      t.string :email
      t.string :pass

      t.timestamps
    end
  end
end
