class CreateTemplateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :template_documents do |t|
      t.string :title
      t.string :body
      t.text :file_url
      t.text :image_url

      t.timestamps
    end
  end
end
