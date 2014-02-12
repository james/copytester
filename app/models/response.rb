class Response < ActiveRecord::Base
  belongs_to :copy_sample, counter_cache: true
  has_many :response_answers
  accepts_nested_attributes_for :response_answers
end
