class AddResponsesCountToCopySample < ActiveRecord::Migration
  def change
    add_column :copy_samples, :responses_count, :integer
  end
end
