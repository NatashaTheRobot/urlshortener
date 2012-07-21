class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :redirects, :default => 1
      t.references :url

      t.timestamps
    end
  end
end
