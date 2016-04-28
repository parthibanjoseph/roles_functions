json.draw params[:draw]
json.recordsTotal @recordsTotal
json.recordsFiltered @recordsFiltered
json.data @sub_organizations.each do |subo|
  json.extract! subo, :id, :subOrganizationName, :created_at
  json.externalOrganizationName subo.external_organization.externalOrganizationName
  json.url sub_organization_url(subo, format: :json)
end