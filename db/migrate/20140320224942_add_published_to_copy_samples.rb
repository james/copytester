class AddPublishedToCopySamples < ActiveRecord::Migration
  def change
    add_column :copy_samples, :published, :boolean
  end
end
