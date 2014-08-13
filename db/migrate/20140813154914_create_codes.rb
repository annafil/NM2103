class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :projectid
      t.string :code
      t.date :expiry

      t.timestamps
    end
  end
end
