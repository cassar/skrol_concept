class Language < ActiveRecord::Base
  extend FriendlyId
  friendly_id :language_name, use: :slugged
end
