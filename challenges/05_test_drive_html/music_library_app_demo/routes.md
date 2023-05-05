# REST routing (REST)
# Albums = resource 
# Artist = resource

## list all albums
    Request:
    GET /albums 
    #we use GET when we are getting data 

    Response (200 OK)
    A list of albums

## Find a specifc album
    Request:
    GET /albums/:id

    Response (200 OK):
    A specific album


## Create a new album
 Request:
    POST /albums 
    #we use post because we are creating data. this will also all #use to give body requests.

    With body parameters:
        title="OK Computer"
        release_year="1997"
        artist_id="5"

    Response (200 OK):
    No content, just creates new resource (the new album)
<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fmusic_library_database_app%2Froutes.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fmusic_library_database_app%2Froutes.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fmusic_library_database_app%2Froutes.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fmusic_library_database_app%2Froutes.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fmusic_library_database_app%2Froutes.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->

