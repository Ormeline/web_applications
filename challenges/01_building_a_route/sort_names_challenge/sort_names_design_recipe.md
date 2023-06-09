# POST/ sort-names Route Design Recipe

_Copy this design recipe template to test-drive a Sinatra route._

## 1. Design the Route Signature

You'll need to include:
  * the HTTP method 
  * the path
  * any query parameters (passed in the URL)
  * or body parameters (passed in the request body)

    Return the sorted names
    Method: POST
    Path: /sort-names
    Body parameters:
  - name: a comma-separated string of names to be sorted

        
## 2. Design the Response

The route might return different responses, depending on the result.

For example, a route for a specific blog post (by its ID) might return `200 OK` if the post exists, but `404 Not Found` if the post is not found in the database.

Your response might return plain text, JSON, or HTML code. 

_Replace the below with your own design. Think of all the different possible responses your route will return._

```when body parameters sort-names, it returns a list of names
<!-- EXAMPLE -->
<!-- Response when the post is found: 200 OK -->

when body parameters name is provided, it returns sorted names with status 200 OK


```

```html
<!-- EXAMPLE -->
<!-- Response when the post is not found: 404 Not Found -->

when an unknown route is requested, it returns a 404 Not Found error

```

## 3. Write Examples

_Replace these with your own design._

```
# Request:

POST /sort-names
Body: { "name": "Joe, Alice, Zoe, Julia, Kieran" }

# Expected response:

Response for 200 OK
Body: "sorted names: Alice, Joe, Julia, Kieran, Zoe"
```

```
# POST /unknown-route

# Expected response:

Response for 404 Not Found
Body: "Name is not found"
```

## 4. Encode as Tests Examples

```ruby
# EXAMPLE
# file: spec/integration/application_spec.rb

require "spec_helper"
require "rack/test"
require_relatve '../../app'

describe Application do
  include Rack::Test::Methods
  
  let(:app) { Application.new }

  context "POST /sort-names" do
        it "returns sorted names with status 200 OK" do
            input = "Joe, Alice, Zoe, Julia, Kieran"
            expected_output = "sorted names: Alice, Joe, Julia, Kieran, Zoe"
            post "/sort-names", name: input
            expect(last_response.status).to eq(200)
            expect(last_response.body).to eq(expected_output)
        end   

        it "returns 404 message if name is not found" do
            input = "Kat"
            post "unknown-route?name=#{input}"
            expect(last_response.status).to eq(404)
            expect(last_response.body).to eq("Name is not found")
        end
    end
end

    
```

## 5. Implement the Route

Write the route and web server code to implement the route behaviour.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->