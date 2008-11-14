class CreateSeoStructure < ActiveRecord::Migration
  def self.up
    create_table :metatags, :force => true do |t|
      t.string :title, :keywords, :metatagble_type
      t.text :description
      t.integer :metatagble_id
      t.timestamps
    end
  end

  def self.down
    drop_table :metatags
  end
end