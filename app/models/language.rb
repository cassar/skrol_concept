class Language < ActiveRecord::Base
  extend FriendlyId
  friendly_id :language_name, use: :slugged
end

# Draft Schema for Migration
# ID | Language_name | Corresponding Sentence foreign Key | 
# Corresponding Sentence Phonetic Foreign key 
