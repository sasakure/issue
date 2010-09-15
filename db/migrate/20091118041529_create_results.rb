class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.integer :issue_id
      t.text :reserach
      t.string :responder
      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
