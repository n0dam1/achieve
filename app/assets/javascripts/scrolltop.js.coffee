ready = ->
  $(window).scroll ->
    if $('.page-top-btn-blog').length
      trigger_timing_height = 200
    else
      trigger_timing_height = 400

    element = $('.page-top-btn')
    visible = element.is(':visible')
    height = $(window).scrollTop()
    if height > trigger_timing_height
      element.fadeIn() if !visible
    else
      element.fadeOut()

  $(document).on 'click', '.move-page-top', ->
    $('html,body').animate({ scrollTop: 0 }, 'slow')

$(document).ready(ready)
$(document).on('page:load', ready)