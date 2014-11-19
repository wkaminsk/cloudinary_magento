Feature: Uploading images to an image provider
    In order to optimise images for specific web clients
    As a Store Admin
    I want to be able to upload images to the image provider

    @javascript
    Scenario: Uploading an image using the correct keys
      Given I have an image "pink_dress.gif"
      When I upload the image "pink_dress.gif" to the "session-digital" cloud using the credentials with the API key "ABC123" and the secret "DEF456"
      And the image provider has a "session-digital" cloud
      And the image provider is aware of the credentials with the API key "ABC123" and the secret "DEF456"
      Then the image should be available through the image provider
