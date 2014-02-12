class MoveQuestionsToTests < ActiveRecord::Migration
  def change
    rename_column :questions, :copy_sample_id, :copy_test_id
  end
end
