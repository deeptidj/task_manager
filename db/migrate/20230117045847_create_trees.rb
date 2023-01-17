class CreateTrees < ActiveRecord::Migration[7.0]
  def change
    create_table :trees do |t|
      t.text :qspecies
      t.text :qaddress
      t.text :qsiteinfo
      t.string :planttype

      t.timestamps
    end
  end
end
