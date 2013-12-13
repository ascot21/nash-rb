class HomeController < ApplicationController

  def index
    RMeetup::Client.api_key = ENV["MEETUP_API_KEY"]
    @meetup = OpenStruct.new(meetup_details.first.group)
    @next_event = meetup_api_events.first.event
  end

  def logo_contest
  end

  private

  def meetup_details
    Rails.cache.fetch('meetup-api-details', expires_in: 1.days) do
      RMeetup::Client.fetch(:groups,{:group_urlname => "nashvillerails" })
    end
  end

  def meetup_api_events
    Rails.cache.fetch('meetup-api-events', expires_in: 1.days) do
      RMeetup::Client.fetch(:events, {:group_urlname => "nashvillerails"})
    end
  end

end
