json.array!(@matrixproductforms) do |matrixproductform|
  json.extract! matrixproductform, :id, :product_form
  json.url matrixproductform_url(matrixproductform, format: :json)
end
