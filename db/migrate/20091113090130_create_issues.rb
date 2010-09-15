class CreateIssues < ActiveRecord::Migration
  def self.up
    create_table :issues do |t|
      t.string :title, :limit=>100
      t.text :content,:null=>false
      t.string :querist, :limit=>30,:null=>false
      t.string :mail_addr, :limit=>30
      t.date :due,:null=>false
      t.integer :ope_public, :limit=>1,:null=>false
      t.integer :status, :limit=>1,:null=>false
      t.timestamps
    end
  end

  def self.down
    drop_table :issues
  end
end
