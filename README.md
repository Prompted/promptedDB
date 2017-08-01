# Prompted-db!
## The REST json API for [Wipzie](https://wipzie-13e17.firebaseapp.com/)!
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
