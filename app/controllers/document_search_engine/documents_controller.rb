require_dependency "document_search_engine/application_controller"

module DocumentSearchEngine
  class DocumentsController < ApplicationController
    before_action :set_document, only: [:show, :edit, :update, :destroy]

    # GET /documents
    def index
      @documents = Document.all
      query = params[:query]
      if query.present?
        @documents = @documents.full_text_search(query)
      end
    end

    # GET /documents/1
    def show
    end

    # GET /documents/new
    def new
      @document = Document.new
    end

    # GET /documents/1/edit
    def edit
    end

    # POST /documents
    def create
      @document = Document.new(document_params)

      if @document.save
        redirect_to @document, notice: 'Document was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /documents/1
    def update
      if @document.update(document_params)
        redirect_to @document, notice: 'Document was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /documents/1
    def destroy
      @document.destroy
      redirect_to documents_url, notice: 'Document was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_document
        @document = Document.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def document_params
        params.require(:document).permit(:title, :content)
      end
  end
end
