class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :begin
      t.date :end
      t.integer :state, default: 0 

      t.timestamps
    end
  end
end
