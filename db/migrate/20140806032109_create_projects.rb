class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project
      t.integer :number
      t.string :name
      t.string :email
      t.text :description
      t.integer :points

      t.timestamps
    end
  end
end
