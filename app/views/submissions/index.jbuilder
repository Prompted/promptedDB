json.submissions @all_submissions do |as|
  json.user_id        as.user_id
  json.username       as.user.screen_name
  json.title          as.title
  json.type_of        as.type_of
  json.url            as.url
  json.audience       as.audience_flag
  json.inappropriate  as.flagged_as_inappropriate
  json.prompt         as.prompt_id
  if as.prompt
    json.prompt         as.prompt_id
    json.prompt_title   as.prompt.content
  else
    json.prompt        "none"
  end
end
