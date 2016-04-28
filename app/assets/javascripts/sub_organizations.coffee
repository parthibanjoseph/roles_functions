# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery  ->
  listing = $('#sub_organizations-table')
  url = listing.data("url")
  #alert url
  listing.DataTable (
    dom: 'C<"clear"> lftrip'
    #dom: 'Bfrtip'
    #serverSide: true
    processing: true
    deferRender: true
    stateSave: true
    buttons: [
        'copy', 'excel', 'pdf'
    ]
    columns: [
      {data: "id", visible:false}
      {data: "externalOrganizationName", name: "externalOrganizationName"}
      {data: "subOrganizationName", name: "subOrganizationName"}
      'mRender': (data, type, row) ->
        return "<a class=\"btn btn-default\" href=\"" +
            "/tasks/" + row.id +
            "<span class=\"translation_missing\" title=" + row.subOrganizationName + ">" + row.subOrganizationName + "</span></a>"
       {data: "created_at", name: "created_at"}
    ]
    ajax:
      url: url
  )