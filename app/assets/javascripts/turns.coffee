# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('#turn_date').datepicker(
    language: 'es'
    format: 'dd-mm-yyyy'
    autoclose: 'true'
    todayHighlight: 'true'
    startView: 2
    daysOfWeekDisabled: '06'
    weekStart: 0
)