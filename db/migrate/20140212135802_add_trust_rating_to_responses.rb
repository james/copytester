class AddTrustRatingToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :trust_rating, :integer
  end
end
