$.ajaxSetup dataType: 'json'

$(document).on 'turbolinks:load', ->
  $(".select2").select2({theme: "bootstrap"})
  $(".datepicker").datepicker({
    startView: 1,
    language: "es",
    orientation: "bottom auto",
    autoclose: true,
    todayHighlight: true
  })
  
  $(".datatable").DataTable 
    'language':'url':'//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Spanish.json'
    'bPaginate': false
    'info': false
    

$(document).ready ->
  panels = $('.user-infos')
  panelsButton = $('.dropdown-user')
  panels.hide()
  #Click dropdown
  panelsButton.click ->
    #get data-for attribute
    dataFor = $(this).attr('data-for')
    idFor = $(dataFor)
    #current button
    currentButton = $(this)
    idFor.slideToggle 400, ->
      #Completed slidetoggle
      if idFor.is(':visible')
        currentButton.html '<i class="glyphicon glyphicon-chevron-up text-muted"></i>'
      else
        currentButton.html '<i class="glyphicon glyphicon-chevron-down text-muted"></i>'
      return
    return
  $('[data-toggle="tooltip"]').tooltip()
  

$.fn.render_form_errors = (model_name, errors) ->
  form = this
  $("#new_dependence_of_agent").clear_form_errors()
  $.each(errors, (field, messages) ->
    field = field.substring(field.lastIndexOf(".")+1).replace("_id","")
    input = form.find('input, select, textarea').filter(->
      name = $(this).attr('name')
      campo = name.substring(name.lastIndexOf('[')+1).replace("]","").replace("_id", "")
      return field == campo
    )
    input.closest('.form-group').addClass('has-danger')
    input.addClass('form-control-danger')

    #input.parent().append('<span class="help-block">' + $.map(messages, (m) -> m.charAt(0).toUpperCase() + m.slice(1)).join('<br />') + '</span>')
    toastr["error"](messages)
  )

$.fn.clear_form_errors = () ->
  this.find('.form-group').removeClass('has-danger')
  this.removeClass('form-control-danger')

$.fn.clear_form_fields = () ->
  this.find(':input','#new_dependence_of_agent')
      .not(':button, :submit, :reset, :hidden')
      .val('')
      .removeAttr('checked')
      .removeAttr('selected')


$(document).on 'turbolinks:before-cache', ->
  dataTable =  $($.fn.dataTable.tables(true)).DataTable()
  if (dataTable != null)
    dataTable.destroy()
    dataTable = null