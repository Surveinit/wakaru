class Dictionary < ApplicationRecord
  def self.find_meaning(word)
    find_by(word: word)&.meaning || "Meaning not found!"
  end
end
