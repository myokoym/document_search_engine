class CreateDocumentSearchEngineDocuments < ActiveRecord::Migration
  def change
    create_table :document_search_engine_documents, options: "ENGINE=Mroonga" do |t|
      t.text :title
      t.text :content

      t.timestamps null: false
    end
  end
end
