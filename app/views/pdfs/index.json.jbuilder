json.array!(@pdfs) do |pdf|
  json.extract! pdf, :id, :title, :document
  json.url pdf_url(pdf, format: :json)
end
