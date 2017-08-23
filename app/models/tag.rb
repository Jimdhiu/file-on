class Tag < ApplicationRecord
  has_many :documents
  belongs_to :category

  def complete_for?(user)
    user.documents.where(tag: self).size == number_of_uploads
  end
end
