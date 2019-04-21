module EventsHelper
  def show_event_image(event)
      if event.image.url != nil
         event.image.url
      else
        'default.png'
      end
  end
end
