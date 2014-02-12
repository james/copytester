class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :copy_sample, index: true
      t.integer :time_taken

      t.timestamps
    end
  end
end
