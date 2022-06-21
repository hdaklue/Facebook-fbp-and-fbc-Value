___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Facebook fbp and fbc Value",
  "brand": {
    "id": "brand_dummy",
    "displayName": "Klue",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAWJAAAFiQFtaJ36AAACsUlEQVRoge2aT+spYRTHz739/MmfkrCwsiFiYyNWiI2lN+AVeAPK3htgLTaWlmywElHIhihZILFR/pbFvZ2nn7rXzcyYeYbJnW+JzJln5tN5vs9zDvPDarX+gg/Qz0+AABlEgvoYkK9ngvV6PbhcLlAqlWA0Gv85fjgcYDabweVygfV6TfM+WfUUCEIUCoWHx7fbLTQaDZjP55DP58W+978ke0RqkkGkJhlEapJBpKb/s0ShIafTCdFoFHQ6HZhMpocj1ut1OJ/P0Gq1SMkjKRCs1YrFInlnEpY4x+MRBoMBJwh49dTiArHb7aDT6ZCis1wucx77ZSCpVIpMKyZdr1dSdGIWni06XwISj8chkUiwxjWbTQJTKpU4T6mbRAfBLGA22IR+2Gw2UK1WiUeelagg6IdcLsfJ3JPJhMDgKsVHooJkMhmwWq2MMWjufr9PzF2pVHhfSzSQZDIJkUiEMQb9gL7Y7/e8fPGnRNlH7HY7MTibEAL3C4TAzAgRdRCDwQDBYJA1Tqi570V1aikUCvD5fKBSqRjjaJj7XlQzgtngouVySaJGoxG1a7+l+vV6veQ9FotRG/MtIBqNBhwOB8lgIBCgMubb+hG32008FQqFQK1WCx7vbSAI4fF4CEQ4HBY83ls7RNxvtFot+P1+zgvFI7291cXlGr4rZCESFQT3CyxDmGQ2m8FisYDNZiMvvhIN5Nbp9Xo91lgaWREF5FYMYhGYTqdhtVoxxtNYjkUBwUxgMYg992KxgGw2y3qO0OWYOsh0OiUlSLvdhvF4TL5DoG63y3ie0OWYKsjpdCJNEvrjvknikhUhyzFVEJxO8G30e+F0q9VqrGPwNf5L9xFsfdnEdzl+KQh6B3+kYxOfrDz1LAqNv6fZxrhpOByST1y7R/mhGqlJBpGaPgMEAH4DUVIqM1S7omwAAAAASUVORK5CYII\u003d"
  },
  "description": "pushes fbp and fbc to data layer for an advanced event matching",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const log = require('logToConsole');
const queryPermission = require('queryPermission');
const getCookieValues = require('getCookieValues');
const createQueue = require('createQueue');


const dataLayerPush = createQueue('dataLayer');

let fbq = getCookieValues('_fbp')[0];
let fbc = getCookieValues('_fbc')[0];
if(fbq){
  dataLayerPush({'klFbp':fbq,'klFbc':fbc});
}

// Call data.gtmOnSuccess when the tag is finished.
data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "_fbp"
              },
              {
                "type": 1,
                "string": "_fbc"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 6/21/2022, 11:22:08 PM


