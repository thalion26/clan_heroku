class CreateClans < ActiveRecord::Migration
  def change
    create_table :clans do |t|
      t.column :name, 	:string
	  t.column :message, 	:text
      t.timestamps null: false
    end
  end
end
