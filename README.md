# Prompted-db!
## The REST json API for [Prompted](https://watchparty.online)!
"Share your passion"

## To add submission
#### POST "https://prompted-db.herokuapp.com/submissions/create"

**request**

             {
                type_of: "text/video/audio/image",
                url: "www.longwebaddress.com/mystory.txt",
                title: "Something",
                audience_flag: "adult", (optional, default set to "all")
                prompt_id: 12 (optional)
              }

**response**

                status: "Success"

                or

                status: "Unable to save submission"
