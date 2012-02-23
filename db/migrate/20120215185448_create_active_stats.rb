class CreateActiveStats < ActiveRecord::Migration
  def change
    create_table :active_stats do |t|
      t.integer :id
      t.integer :team_id
      t.string :name
      t.integer :gp
      t.integer :fgm
      t.integer :fga
      t.integer :ftm
      t.integer :fta
      t.integer :reb
      t.integer :ast
      t.integer :stl
      t.integer :blk
      t.integer :pts
      t.integer :fpts

      t.timestamps
    end
  end
end
