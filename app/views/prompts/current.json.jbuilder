json.prompts do
  json.daily do
    json.content        @daily.content
    json.theme          @daily.theme
    json.due_date       @daily.due_date.utc.strftime("%I:%M%p on %m/%d/%Y")
    json.voting_closed  @daily.voting_closed.utc.strftime("%I:%M%p on %m/%d/%Y")
  end
  json.weekly do
    json.content        @weekly.content
    json.theme          @weekly.theme
    json.due_date       @weekly.due_date.utc.strftime("%I:%M%p on %m/%d/%Y")
    json.voting_closed  @weekly.voting_closed.utc.strftime("%I:%M%p on %m/%d/%Y")
  end
  json.montly do
    json.content        @monthly.content
    json.theme          @monthly.theme
    json.due_date       @monthly.due_date.utc.strftime("%I:%M%p on %m/%d/%Y")
    json.voting_closed  @monthly.voting_closed.utc.strftime("%I:%M%p on %m/%d/%Y")
  end
end
