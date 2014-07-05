json.array!(@matrixplantparts) do |matrixplantpart|
  json.extract! matrixplantpart, :id, :plant_part
  json.url matrixplantpart_url(matrixplantpart, format: :json)
end
