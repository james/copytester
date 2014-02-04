class CreateCopyTests < ActiveRecord::Migration
  def change
    create_table :copy_tests do |t|
      t.string :name

      t.timestamps
    end
  end
end
