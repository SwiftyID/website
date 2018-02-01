# Website SwiftyID

This website based on Vapor framework.


Clone this project:

`git clone https://github.com/SwiftyID/website`

`cd website`

Build for development:

`swift build`

`.build/debug/website serve`

Build for production:

`swift build --configuration release`

`.build/release/website serve --env=production`

## Deploy to Vapor Cloud

Use Vapor Toolbox to deploy this project to vapor cloud.

`vapor cloud deploy`

Development slug:
`https://swiftyid-website-development.vapor.cloud/`

Production:
`https://swiftyid-website.vapor.cloud/`
