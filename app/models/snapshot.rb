class Snapshot < ActiveRecord::Base
  validates :title, :language, :entry, presence: true
end
