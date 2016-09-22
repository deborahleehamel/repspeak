# Repspeak - State representative twitter content accessible via mapped district pins.
## Overview

This project uses the GovTrack.us API and the Google Maps API to implement a 3rd party app that uses OAuth 2.0 to log users in via Twitter and to access representative data mapped to district pins on a state map. It utilizes the Google Maps API to create interactive pins on a map for each district in a state.

![Image of Home Page](/app/assets/images/Repspeak_landing.png)

## Dependencies

The gems used for this project can be found in the Gemfile. Data is initially loaded to the database from a csv file and from the GovTrackService API via 2 rake tasks.
```
rake import_district_data:district_data      (Import districts from csv)
rake import_legislator_data:legislator_data  (Import legislators from service)
```

## Testing

The test suite can be run from the main project directory by running the `rspec` command. It uses the [VCR gem](https://github.com/vcr/vcr) to record the API responses that load the main home page.
