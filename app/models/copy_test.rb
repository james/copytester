class CopyTest < ActiveRecord::Base
  has_many :copy_samples
  has_many :questions
end
