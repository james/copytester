class CreateCopySamples < ActiveRecord::Migration
  def change
    create_table :copy_samples do |t|
      t.text :copy
      t.references :copy_test
      t.string :name

      t.timestamps
    end
  end
end
