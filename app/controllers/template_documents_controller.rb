class TemplateDocumentsController < ApplicationController
  before_action :set_template_document, only: [:show, :update, :destroy]

  # GET /template_documents
  def index
    @template_documents = TemplateDocument.all

    render json: @template_documents
  end

  # GET /template_documents/1
  def show
    render json: @template_document
  end

  # POST /template_documents
  def create
    @template_document = TemplateDocument.new(template_document_params)

    if @template_document.save
      render json: @template_document, status: :created, location: @template_document
    else
      render json: @template_document.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /template_documents/1
  def update
    if @template_document.update(template_document_params)
      render json: @template_document
    else
      render json: @template_document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /template_documents/1
  def destroy
    @template_document.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_document
      @template_document = TemplateDocument.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def template_document_params
      params.require(:template_document).permit(:title, :body, :file_url, :image_url)
    end
end
