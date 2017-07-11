json.submissions @my_submissions do |ms|
  json.title          ms.title
  json.type_of        ms.type_of
  json.url            ms.url
  json.audience       ms.audience_flag
  json.inappropriate  ms.flagged_as_inappropriate
  json.prompt         ms.prompt_id
  if ms.prompt
    json.prompt         ms.prompt_id
    json.prompt_title   ms.prompt.content
  else
    json.prompt        "none"
  end
end
