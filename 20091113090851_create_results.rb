class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.integer :issue_id
      t.text :research, :limit=>255, :null=>false
      t.string :responder, :null=>false
      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
