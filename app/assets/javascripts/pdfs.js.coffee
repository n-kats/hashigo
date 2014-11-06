# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


class Canv
  constructor: (id) ->
    @canvas = $ "##{id}"
    @context = document.getElementById(id).getContext "2d"
    @start_x
    @start_y
    @x
    @y
    @is_drawing = false
    @border_with = 10

  correct_x: ->
    @canvas.offset().left + @border_with
  correct_y: ->
    @canvas.offset().top + @border_with
  get_x: (event)->
    event.pageX - correct_x()
  get_y: (event)->
    event.pageY - correct_y()

  down: (event) ->
    @start_x = get_x(event)
    @start_y = get_x(event)
    @is_drawing = true
    return

  move: (event) ->
    return unless @is_drawing
    @x = get_x(event)
    @y = get_y(event)
    @context.beginPath()
    @context.moveTo(@start_x, @start_y)
    @context.lineTo(@x,@y)
    @context.stroke()
    @start_x = @x
    @start_y = @y
    return
  up: ->
    @is_drawing = false
    return
  leave: ->
    @is_drawing = false
    return
window.Canv = Canv

