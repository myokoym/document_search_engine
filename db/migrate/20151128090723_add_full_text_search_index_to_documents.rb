class AddFullTextSearchIndexToDocuments < ActiveRecord::Migration
  def change
    add_index :document_search_engine_documents, :content, type: :fulltext
  end
end
