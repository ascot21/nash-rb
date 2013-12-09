class HomeController < ApplicationController

  def index
    RMeetup::Client.api_key = ENV["MEETUP_API_KEY"]
    results = RMeetup::Client.fetch(:groups,{:group_urlname => "nashvillerails" })
    results.each do |result|
      @meetup = OpenStruct.new(result.group)
    end
    events = RMeetup::Client.fetch(:events, {:group_urlname => "nashvillerails"})
    @next_event = events.first.event
  end

  def logo_contest
  end

end
