
$(document).on 'turbolinks:load', ->
  console.log "assasa"
  $(".select2").select2({theme: "bootstrap"})
  $(".datepicker").datepicker({
    startView: 1,
    language: "es",
    orientation: "bottom auto",
    autoclose: true,
    todayHighlight: true
  })
  
  $("table").DataTable 'language':'url':'//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Spanish.json'

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
  $('button').click (e) ->
    e.preventDefault()
    alert 'This is a demo.\n :-)'
    return
  return