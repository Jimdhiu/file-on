module ApplicationHelper

  def check_documents_in_tag_expired?(documents, tag)
    expireds = []
    @documents.where(tag: tag).each do |document|
      if document.expired?
        expireds << true
      else
        expireds << false
      end
    end
    result = expireds.include? true

  end
end
