class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|
      t.belongs_to :hotspot, index:true
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
