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
  "displayName": "The Trade Desk Conversion Events Server-side Tag",
  "brand": {
    "id": "brand_dummy",
    "displayName": "",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAMAAABF0y+mAAAAZlBMVEX///+o0v2Sx/yu1v1NrfsAlPoAlfpWsPv3/P8Al/oAmfpcsvuTyvwjofrX6/6Ew/w7pvuezvwAkPq02f0AkfoAi/m53P3a7f4Am/rG4/0loPp0vPzr9v/j8v57vvzQ6P5CqfvB4P3CUxjqAAAA3UlEQVR4AbXQRQLDMAxE0SnIsSbsqsz3P2QpDNv+7TMK/26x/Laax7U45ySCn0WnpMZI0myKeRQXXywlJEPxn4CN/JCW9y0Ott0Bqy/uD8qw6ywLtCNqhD8pXYdn1TNaxEUoZYuk7XuI3LFo7GIU9HFvNF/j3pgOEB/c13g1HioMEuGbdOibU463W9nsvKKuoGzQ6y4UNJXCQx9j1QhNXqhxZ0ej9Ua0MrqH7w7VFL3ORjvi2yU3MuzR7xbsjmcRpeY+9sSw4+GIpylJ0TsmeTyDE9MlZruUy1WGv/cG5XQMrEzH6WoAAAAASUVORK5CYII="
  },
  "description": "A server-side tag template that captures client-side conversion and sends them to The Trade Desk Real-Time Conversion Events API.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "LABEL",
    "name": "documentation",
    "displayName": "\u003cp\u003eThis tag sends to The Trade Desk Real Time Conversion Events API.\u003c/p\u003e\n\u003cp\u003eFull API specification and documentation: \u003ca href\u003d\"https://partner.thetradedesk.com/v3/portal/data/doc/DataConversionEventsApi\"\u003ehttps://partner.thetradedesk.com/v3/portal/data/doc/DataConversionEventsApi\u003c/b\u003e\u003c/p\u003e"
  },
  {
    "type": "GROUP",
    "name": "group_apiconfiguration",
    "displayName": "API Configuration",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "api_url",
        "displayName": "TTD Conversion API URL",
        "simpleValueType": true,
        "defaultValue": "https://insight.adsrvr.org/track/realtimeconversion",
        "help": "Default is \u0027https://insight.adsrvr.org/track/realtimeconversion\u0027",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "alwaysInSummary": true
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "group_tagconfig",
    "displayName": "Tag Configuration",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SELECT",
        "name": "tag_type",
        "displayName": "Tracking Tag Type",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "event_tracker",
            "displayValue": "Event Tracking"
          },
          {
            "value": "universal_pixel",
            "displayValue": "URL Mapping (page views)"
          }
        ],
        "simpleValueType": true,
        "alwaysInSummary": true
      },
      {
        "type": "TEXT",
        "name": "merchant_id",
        "displayName": "Merchant ID",
        "simpleValueType": true,
        "help": "The platform ID of the merchant assigned by The Trade Desk to the merchant during the onboarding process.",
        "enablingConditions": [
          {
            "paramName": "tag_type",
            "paramValue": "event_tracker",
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "alwaysInSummary": true
      },
      {
        "type": "TEXT",
        "name": "tracker_id",
        "displayName": "Event Tracker ID",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "tag_type",
            "paramValue": "event_tracker",
            "type": "EQUALS"
          }
        ],
        "alwaysInSummary": true,
        "help": "The platform ID of the event tracker (Event Tracker ID)"
      },
      {
        "type": "TEXT",
        "name": "adv",
        "displayName": "Advertiser ID",
        "simpleValueType": true,
        "alwaysInSummary": true,
        "help": "The platform ID for the advertiser on whose behalf the tracking call was made.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "tag_type",
            "paramValue": "universal_pixel",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "upixel_id",
        "displayName": "Universal Pixel ID",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "tag_type",
            "paramValue": "universal_pixel",
            "type": "EQUALS"
          }
        ],
        "alwaysInSummary": true,
        "help": "The platform ID of the event tracker (Universal Pixel ID)"
      },
      {
        "type": "TEXT",
        "name": "event_name",
        "displayName": "Event Name",
        "simpleValueType": true,
        "help": "The event type defined by the partner platform. To define event types to be supported and configured by The Trade Desk, contact your Account Manager or Technical Account Manager.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "tag_type",
            "paramValue": "event_tracker",
            "type": "EQUALS"
          }
        ],
        "alwaysInSummary": true
      },
      {
        "type": "TEXT",
        "name": "referrer_url",
        "displayName": "Page URL",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY",
            "errorMessage": "Cannot be empty when using URL Mapping",
            "enablingConditions": [
              {
                "paramName": "tag_type",
                "paramValue": "universal_pixel",
                "type": "EQUALS"
              }
            ]
          }
        ],
        "alwaysInSummary": true
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "group_userdetails",
    "displayName": "User Details",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SELECT",
        "name": "adid_type",
        "displayName": "User/Device ID Type",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "TDID",
            "displayValue": "TDID"
          },
          {
            "value": "UID2",
            "displayValue": "Unified ID 2.0"
          },
          {
            "value": "EUID",
            "displayValue": "European Unified ID"
          },
          {
            "value": "IDL",
            "displayValue": "IDL"
          },
          {
            "value": "Device Advertising ID",
            "displayValue": "DAID"
          },
          {
            "value": "IDFA",
            "displayValue": "IDFA"
          },
          {
            "value": "AAID",
            "displayValue": "AAID"
          },
          {
            "value": "NAID",
            "displayValue": "NAID"
          }
        ],
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "alwaysInSummary": true
      },
      {
        "type": "TEXT",
        "name": "adid",
        "displayName": "User/Device Identifier",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "alwaysInSummary": false
      },
      {
        "type": "TEXT",
        "name": "client_ip",
        "displayName": "User IP address",
        "simpleValueType": true,
        "help": "The client IPv4 or IPv6 IP address that uniquely identifies a network interface on a machine.",
        "alwaysInSummary": false
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "group_orderdetails",
    "displayName": "Order Details",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "order_id",
        "displayName": "Order ID",
        "simpleValueType": true,
        "help": "The associated order identifier of the event."
      },
      {
        "type": "TEXT",
        "name": "value",
        "displayName": "Order Value",
        "simpleValueType": true,
        "help": "The revenue-tracking value with a period (not a comma) as a decimal point."
      },
      {
        "type": "TEXT",
        "name": "currency",
        "displayName": "Currency",
        "simpleValueType": true,
        "help": "The ISO 4217 currency code for the revenue value (e.g. USD,GBP, etc)"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "group_items",
    "displayName": "Items (Products)",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "items",
        "displayName": "Event Item/Product Data",
        "simpleValueType": true,
        "help": "Suggested: create a variable that provides the event\u0027s item/product list."
      },
      {
        "type": "GROUP",
        "name": "item_mappings",
        "displayName": "Mappings: Event Item/Product field to TTD API Item field",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "LABEL",
            "name": "label_mappings",
            "displayName": "For each item/product within the list specified above, enter the name of the item/product object field that contains the required value. Note: simply enter a field name, rather than a variable that holds the value.\n\nCan be tailored to the required schema being used. Defaults to GA4 schema.",
            "enablingConditions": [
              {
                "paramName": "dfgd",
                "paramValue": "dfggdf",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "TEXT",
            "name": "item_mapping_item_code",
            "displayName": "Item Code (item_code)",
            "simpleValueType": true,
            "defaultValue": "item_id"
          },
          {
            "type": "TEXT",
            "name": "item_mapping_name",
            "displayName": "Name (name)",
            "simpleValueType": true,
            "defaultValue": "item_name"
          },
          {
            "type": "TEXT",
            "name": "item_mapping_qty",
            "displayName": "Quantity (qty)",
            "simpleValueType": true,
            "defaultValue": "quantity"
          },
          {
            "type": "TEXT",
            "name": "item_mapping_price",
            "displayName": "Price (price)",
            "simpleValueType": true,
            "defaultValue": "price"
          },
          {
            "type": "TEXT",
            "name": "item_mapping_cat",
            "displayName": "Category (cat)",
            "simpleValueType": true,
            "defaultValue": "item_category"
          }
        ],
        "help": "For each item/product within the list specified above, enter the name of the item/product object field that contains the required value. Note: simply enter a field name, rather than a variable that holds the value.  Can be tailored to the required schema being used. Defaults to GA4 schema."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "group_dynamic",
    "displayName": "Standard \u0027Dynamic\u0027 Parameters (TD1-TD10)",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "td1",
        "displayName": "TD1",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td2",
        "displayName": "TD2",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td3",
        "displayName": "TD3",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td4",
        "displayName": "TD4",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td5",
        "displayName": "TD5",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td6",
        "displayName": "TD6",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td7",
        "displayName": "TD7",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td8",
        "displayName": "TD8",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td9",
        "displayName": "TD9",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td10",
        "displayName": "TD10",
        "simpleValueType": true
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "group_userdefined",
    "displayName": "User Defined API Parameters",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "userdefined",
        "displayName": "Parameter Entry",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Parameter",
            "name": "parameter",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "help": "Use this table to add any parameters that you need to send that are not supported by the template."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "group_advanced",
    "displayName": "Technical Configuration (advanced)",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "timeout",
        "displayName": "HTTP Request Timeout",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          },
          {
            "type": "POSITIVE_NUMBER"
          }
        ],
        "help": "Time in milliseconds to wait before timing out the request. Increasing this can mitigate timeout errors.",
        "defaultValue": 15000
      },
      {
        "type": "CHECKBOX",
        "name": "strictIPValidation",
        "checkboxText": "Strict IP Address Validation (IPv4 / IPv6)",
        "simpleValueType": true,
        "help": "Enabling this validation will check at runtime that an IP Address value has been provided to the tag, and the format matches a basic check for expected IPv4 or IPv6 format.",
        "defaultValue": false
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

// THIS SOURCE CODE IS PROVIDED BY THE TRADE DESK, INC. ("TTD") "AS IS" AND "WITH ALL FAULTS." TTD SHALL HAVE NO OBLIGATION TO UPDATE THE SOURCE CODE. ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHORS, TTD, OR TTD'S AFFILIATES BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION SUSTAINED BY YOU OR ANY THIRD PARTY) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOURCE CODE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

const sendHttpRequest = require('sendHttpRequest');
const log = require('logToConsole');
const JSON = require('JSON');
const Object = require('Object');

log('TTD Conversion API');
log('data=' + JSON.stringify(data));

//list of keys to simply copy from the template input to the TTD Event.
var common_keys = [
    'merchant_id',
    'tracker_id',
    'adv',
    'upixel_id',
    'event_name',
    'adid_type',
    'adid',
    'client_ip',
    'referrer_url',
    'order_id',
    'value',
    'currency',
    'td1',
    'td2',
    'td3',
    'td4',
    'td5',
    'td6',
    'td7',
    'td8',
    'td9',
    'td10',
];

//List - For each TTD API Item field, which tag input field contains the name of the equivalent field from the source Items list.
var item_mapping_fields = [
    ['item_code', 'item_mapping_item_code'],
    ['name', 'item_mapping_name'],
    ['qty', 'item_mapping_qty'],
    ['price', 'item_mapping_price'],
    ['cat', 'item_mapping_cat'],
];

/**
 * Function that returns true if a key is defined within an object
 *
 * @param {object} obj - The input data object to assess.
 * @param {string} key - The key to check is in the Object.
 * @return {bool} - True if the object has a key matching the one specified. Otherwise False.
 */
var hasValue = function (obj, key) {
    if (typeof obj[key] === 'undefined') {
        //log('Key '+key+' NOT defined.');
        return false;
    } else {
        //log('Key '+key+' defined.');
        return true;
    }
};

/**
 * Generates a TTD Event from input data on the GTM Template.
 *
 * @param {array} input - Each item is an object with various key/value pairs.
 * @return {array} - Array of objects representing the items/products in the required schema.
 */
var genTTDEvent = function (input) {
    var event = {};

    for (var i in common_keys) {
        var common_key = common_keys[i];
        if (hasValue(input, common_key)) event[common_key] = input[common_key];
    }

    return event;
};

/**
 * Extract item level data from an items list, using mappings the user provided in the item_mapping* fields of the template.
 *
 * @param {array} input - The input data object from the tag. Expecting the array of items/products in its items property, and the required mappings in item_mapping_* fields. Each item is an object with various key/value pairs.
 * @return {array/null} - Array of objects representing the items/products in the required schema. Or null instead of an empty array.
 */
var extractMappedItems = function (input) {
    //skip if no items data is provided
    if (!hasValue(input, 'items')) return null;

    //validate type is a list/array ?

    var convertItemToTtdItem = function (item) {
        var ttd_item = {};
        ttd_item.item_code = item[input.item_mapping_item_code];
        ttd_item.name = item[input.item_mapping_name];
        ttd_item.qty = item[input.item_mapping_qty];
        ttd_item.price = item[input.item_mapping_price];
        ttd_item.cat = item[input.item_mapping_cat];
        return ttd_item;
    };
    var items = input.items.map(convertItemToTtdItem);

    if (items !== []) return items;
    else return null;
};

/**
 * Extract User Defined Parameters
 *
 * @param {object} event - the event to add the parameters to.
 * @param {array} userdefined - the array of user defined parameter objects (key value pairs)
 * @return {object} event - Always returns the event with user defined parameters added. Will be unchanged if mapping of user defined parameters was unsuccessful or there weren't any parameters to merge.
 */
var mergeUserDefinedParams = function (event, userdefined) {
    //skip if no userdefined event data is provided
    if (!userdefined) return event;

    //validate type is a list/array ?

    for (var i in userdefined) {
        var pair = userdefined[i];
        var parameter = pair.parameter;
        var value = pair.value;
        if (hasValue(event, parameter)) {
            log(
                'Cannot overwrite existing parameter [' +
                    parameter +
                    '] with User Defined Parameter'
            );
            continue;
        }

        //add the parameter to the event
        event[parameter] = value;
    }

    return event;
};

/**
 * Function to validate an event contains keys and values for all required fields
 *
 * @param {array} required - List of required keys to look for in event
 * @param {object} event - The event
 * @return {array} - list of required fields the event is missing
 */
var validateRequiredFields = function (required, event) {
    //log('validateRequiredFields()...');

    var missing = [];

    for (var i in required) {
        if (!hasValue(event, required[i])) missing.push(required[i]);
    }

    return missing;
};

/**
 * Function to perform a very basic validation on an IP Address to see if it could be an IP4 or IP6 address
 *
 * @param {string} ip - IP Address
 * @return {bool} - true if valid, false if invalid
 */
var validateIP = function (ip) {
    //type check
    if (typeof ip !== 'string') return false;

    var ip6valid = false;
    var ip4valid = false;

    //simple octets check (IPv4) (i.e. expecting x.x.x.x)
    var ip4octets = ip.split('.');
    if (ip4octets.length == 4) ip4valid = true;

    //simple IPv6 segment count check (i.e. expecting y:y:y:y:y:y:y:y)
    var ip6segments = ip.split(':');
    if (ip6segments.length == 8) ip6valid = true;

    //if ip is valid as either IPv4 or IPv6 return true
    if (ip6valid == true || ip4valid == true) return true;

    return false;
};

function main(data) {
    //generate the event
    var ttd_event = genTTDEvent(data);

    //add additional ecommerce items, if there are any, mapping them to the TTD API fields for Items
    var mappedItems = extractMappedItems(data);
    if (mappedItems) {
        ttd_event.items = mappedItems;
    }

    //merge user defined parameters into the event
    ttd_event = mergeUserDefinedParams(ttd_event, data.userdefined);

    //validate IP address if strict mode is enabled
    if (data.strictIPValidation == true) {
        var missing = validateRequiredFields(['client_ip'], ttd_event);
        if (missing.length > 0) {
            log('ABORT: No values for required fields:', missing);
            data.gtmOnFailure();
            return;
        }

        //validate that an IP is expected format
        if (!validateIP(ttd_event.client_ip)) {
            log(
                "client_ip '" +
                    ttd_event.client_ip +
                    "' is not valid. Aborting..."
            );
            data.gtmOnFailure();
            return;
        }
    }

    //form the message body
    var postBody = {};
    postBody.data = [];
    postBody.data[0] = ttd_event;

    //set message options
    var options = {
        headers: {
            'content-type': 'application/json',
        },
        method: 'POST',
        timeout: data.timeout,
    };

    //final logging before sending
    //log('Sending HTTP POST to: '+data.api_url);
    //log("options="+JSON.stringify(options));
    //log("body="+JSON.stringify(postBody));

    // Sends POST request to TTD API
    sendHttpRequest(
        //url
        data.api_url,
        //options
        options,
        //body
        JSON.stringify(postBody)
    );

    // Call data.gtmOnSuccess when the tag is finished.
    data.gtmOnSuccess();
}

main(data);

/******************
 TEST EVENT...

 window.dataLayer.push(
 {
 'event':'add_to_cart',
 'ecommerce':{
 'transaction_id':'order12345',
 'value':13.49,
 'currency':'USD',
 'items':[
 {
 'item_id': 'item1234',
 'item_name': 'Washing Liquid',
 'unsupported_field':'unknown999',
 'item_category': 'Laundry',
 'price': 5.99,
 'quantity': 1
 },
 {
 'item_id': 'item6789',
 'item_name': 'Hand Soap',
 'unsupported_field':'unknown765',
 'item_category': 'Hygiene',
 'price': 2.50,
 'quantity': 3
 }
 ]
 }});




 */


___SERVER_PERMISSIONS___

[
    {
        "instance": {
            "key": {
                "publicId": "send_http",
                "versionId": "1"
            },
            "param": [
                {
                    "key": "allowedUrls",
                    "value": {
                        "type": 1,
                        "string": "specific"
                    }
                },
                {
                    "key": "urls",
                    "value": {
                        "type": 2,
                        "listItem": [
                            {
                                "type": 1,
                                "string": "https://insight.adsrvr.org/track/realtimeconversion"
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
                "publicId": "logging",
                "versionId": "1"
            },
            "param": [
                {
                    "key": "environments",
                    "value": {
                        "type": 1,
                        "string": "all"
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

scenarios:
  - name: Simple 'no failure' test (TDID)
    code: "//mock input data\nconst mockData = {\n  \"api_url\":\"https://insight.adsrvr.org/track/realtimeconversion\"\
    ,\n  \"tag_type\":'universal_pixel', \n  \"adv\":\"advertiserA\",\n  \"upixel_id\"\
    :'trackingTag123', \n  \"adid_type\":\"TDID\",\n  \"client_ip\":\"6.6.6.6\",\n\
    \  \"ref\":\"https://example.com/test/\",\n  \"value\":\"666\",\n  \"currency\"\
    :\"GBP\",\n  \"td1\":\"TD1-EVENT_NAME\",\n  \"td2\":\"Sent-from-GTM\"\n};\n\n\
    // Call runCode to run the template's code.\nrunCode(mockData);\n\n// Verify that\
    \ the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();"
  - name: Simple 'no failure' test (Android Device ID)
    code: "//mock input data\nconst mockData = {\n  \"api_url\":\"https://insight.adsrvr.org/track/realtimeconversion\"\
    ,\n  \"tag_type\":'event_tracker', \n  \"merchant_id\":\"merchantABC\",\n  \"\
    tracker_id\":'trackingTag123', \n  \"event_name\":\"EVENT_NAME1\",\n  \"adid_type\"\
    :\"AAID\",\n  \"adid\":\"DEVICE-ID-1\",\n  \"client_ip\":\"1.1.1.1\",\n  \"ref\"\
    :\"https://example.com/test/\",\n  \"value\":\"666\",\n  \"currency\":\"GBP\"\
    ,\n  \"td1\":\"TD1-EVENT_NAME\",\n  \"td2\":\"Sent-from-GTM\"\n};\n\n// Call runCode\
    \ to run the template's code.\nrunCode(mockData);\n\n// Verify that the tag finished\
    \ successfully.\nassertApi('gtmOnSuccess').wasCalled();"
  - name: Simple test (TDID, no client_ip, strict IP validation) - Fail expected
    code: "//mock input data\nconst mockData = {\n  \"api_url\":\"https://insight.adsrvr.org/track/realtimeconversion\"\
    ,\n  \"tag_type\":'universal_pixel', \n  \"adv\":\"advertiserA\",\n  \"upixel_id\"\
    :'trackingTag123', \n  \"adid_type\":\"TDID\",\n  //\"client_ip\":\"6.6.6.6\"\
    ,\n  \"ref\":\"https://example.com/test/\",\n  \"value\":\"666\",\n  \"currency\"\
    :\"GBP\",\n  \"td1\":\"TD1-EVENT_NAME\",\n  \"td2\":\"Sent-from-GTM\",\n  \"strictIPValidation\"\
    :true\n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\
    \n// Verify that the tag finished successfully.\nassertApi('gtmOnFailure').wasCalled();"
  - name: Simple test (TDID, no client_ip, no IP validation)
    code: "//mock input data\nconst mockData = {\n  \"api_url\":\"https://insight.adsrvr.org/track/realtimeconversion\"\
    ,\n  \"tag_type\":'universal_pixel', \n  \"adv\":\"advertiserA\",\n  \"upixel_id\"\
    :'trackingTag123', \n  \"adid_type\":\"TDID\",\n  //\"client_ip\":\"6.6.6.6\"\
    ,\n  \"ref\":\"https://example.com/test/\",\n  \"value\":\"666\",\n  \"currency\"\
    :\"GBP\",\n  \"td1\":\"TD1-EVENT_NAME\",\n  \"td2\":\"Sent-from-GTM\",\n  \"strictIPValidation\"\
    :false\n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\
    \n\n// Verify that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();"
  - name: Simple test (TDID, invalid client_ip, strict IP validation) - Fail expected
    code: "//mock input data\nconst mockData = {\n  \"api_url\":\"https://insight.adsrvr.org/track/realtimeconversion\"\
    ,\n  \"tag_type\":'universal_pixel', \n  \"adv\":\"advertiserA\",\n  \"upixel_id\"\
    :'trackingTag123', \n  \"adid_type\":\"TDID\",\n  \"client_ip\":\"NOT-AN-IP-ADDRESS\"\
    ,\n  \"ref\":\"https://example.com/test/\",\n  \"value\":\"666\",\n  \"currency\"\
    :\"GBP\",\n  \"td1\":\"TD1-EVENT_NAME\",\n  \"td2\":\"Sent-from-GTM\",\n  \"strictIPValidation\"\
    :true\n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\
    \n// Verify that the tag finished successfully.\nassertApi('gtmOnFailure').wasCalled();"
  - name: Simple test (TDID, invalid client_ip, no IP validation)
    code: "//mock input data\nconst mockData = {\n  \"api_url\":\"https://insight.adsrvr.org/track/realtimeconversion\"\
    ,\n  \"tag_type\":'universal_pixel', \n  \"adv\":\"advertiserA\",\n  \"upixel_id\"\
    :'trackingTag123', \n  \"adid_type\":\"TDID\",\n  \"client_ip\":\"NOT-AN-IP-ADDRESS\"\
    ,\n  \"ref\":\"https://example.com/test/\",\n  \"value\":\"666\",\n  \"currency\"\
    :\"GBP\",\n  \"td1\":\"TD1-EVENT_NAME\",\n  \"td2\":\"Sent-from-GTM\",\n  \"strictIPValidation\"\
    :false\n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\
    \n// Verify that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();"
  - name: Simple test (TDID, client IPv6)
    code: "//mock input data\nconst mockData = {\n  \"api_url\":\"https://insight.adsrvr.org/track/realtimeconversion\"\
    ,\n  \"adv\":\"advertiserA\",\n  \"tag_type\":'tracker_id', \n  \"tracker_id\"\
    :'trackingTag123', \n  \"event_name\":\"EVENT_NAME1\",\n  \"adid_type\":\"TDID\"\
    ,\n  \"client_ip\":\"0000:0000:0000:0000:0000:0000:0000:0001\",\n  \"ref\":\"\
    https://example.com/test/\",\n  \"value\":\"666\",\n  \"currency\":\"GBP\",\n\
    \  \"td1\":\"TD1-EVENT_NAME\",\n  \"td2\":\"Sent-from-GTM\",\n  \"strictIPValidation\"\
    :true\n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\
    \n// Verify that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();"
  - name: Ecommerce View Item test (GA4)
    code: "//mock input data\nconst mockData = {\n  \"api_url\":\"https://insight.adsrvr.org/track/realtimeconversion\"\
    ,\n  \"adv\":\"advertiserA\",\n  \"tag_type\":'tracker_id', \n  \"tracker_id\"\
    :'trackingTag123', \n  \"event_name\":\"view_item\",\n  \"adid_type\":\"TDID\"\
    ,\n  \"client_ip\": \"1.1.1.1\",\n  \"ref\":\"https://example.com/test/\",\n \
    \ \"value\":\"666\",\n  \"currency\":\"GBP\",\n  \"td1\":\"TD1-EVENT_NAME\",\n\
    \  \"td2\":\"Sent-from-GTM\",\n  \"items\":[\n    {\"item_id\":\"SKU_12345\",\"\
    item_name\":\"Red Men's T Shirt\",\"affiliation\":\"Brand X's store\",\"coupon\"\
    :\"NEWCUST\",\"discount\":2.22,\"index\":0,\"item_brand\":\"X\",\"item_category\"\
    :\"Apparel\",\"item_category2\":\"Adult\",\"item_category3\":\"Shirts\",\"item_category4\"\
    :\"Crew\",\"item_category5\":\"Short sleeve\",\"item_list_id\":\"related_products\"\
    ,\"item_list_name\":\"Related Products\",\"item_variant\":\"red\",\"location_id\"\
    :\"fedgdfgfddfgdfgds\",\"price\":9.99,\"quantity\":1},\n           {\"item_id\"\
    :\"SKU_12346\",\"item_name\":\"Blue Women's T-Shirt\",\"affiliation\":\"Brand\
    \ X's store\",\"coupon\":\"NEWCUST\",\"discount\":1.33,\"index\":1,\"item_brand\"\
    :\"X\",\"item_category\":\"Apparel\",\"item_category2\":\"Adult\",\"item_category3\"\
    :\"Shirts\",\"item_category4\":\"Crew\",\"item_category5\":\"Short sleeve\",\"\
    item_list_id\":\"related_products\",\"item_list_name\":\"Related Products\",\"\
    item_variant\":\"blue\",\"location_id\":\"hgfh5hgfg\",\"price\":20.99,\"quantity\"\
    :2}\n  ],\n  \"item_mapping_item_code\":\"item_id\",\n  \"item_mapping_name\"\
    :\"item_name\",\n  \"item_mapping_qty\":\"quantity\",\n  \"item_mapping_price\"\
    :\"price\",\n  \"item_mapping_cat\":\"item_category\"\n};\n\n// Call runCode to\
    \ run the template's code.\nrunCode(mockData);\n\n// Verify that the tag finished\
    \ successfully.\nassertApi('gtmOnSuccess').wasCalled();"
  - name: Event Tracker (basic, no items)
    code: |-
      const mockData = {
          "api_url": "https://insight.adsrvr.org/track/realtimeconversion",
          "tag_type": "event_tracker",
          "merchant_id": "merch1234",
          "tracker_id": "eventtrack1234",
          "event_name": "eventname",
          "referrer_url": "https://www.example.com/pagesomething",
          "adid_type": "TDID",
          "adid": "12345",
          "client_ip": "1.1.1.1",
          "item_mapping_item_code": "item_id",
          "item_mapping_name": "item_name",
          "item_mapping_qty": "quantity",
          "item_mapping_price": "price",
          "item_mapping_cat": "item_category",
          "timeout": "15000"
      };
      
      // Call runCode to run the template's code.
      runCode(mockData);
      
      // Verify that the tag finished successfully.
      assertApi('gtmOnSuccess').wasCalled();
  - name: Event Tracker w User Defined parameters
    code: |-
      const mockData = {
          "api_url": "https://insight.adsrvr.org/track/realtimeconversion",
          "tag_type": "event_tracker",
          "merchant_id": "merch1234",
          "tracker_id": "eventtrack1234",
          "event_name": "eventname",
          "referrer_url": "https://www.example.com/pagesomething",
          "adid_type": "TDID",
          "adid": "12345",
          "client_ip": "1.1.1.1",
          "item_mapping_item_code": "item_id",
          "item_mapping_name": "item_name",
          "item_mapping_qty": "quantity",
          "item_mapping_price": "price",
          "item_mapping_cat": "item_category",
          "userdefined":[
            {
              "parameter":"event_name","value":"testvalue1"
            },
            {
              "parameter":"testparam2","value":"testvalue2"
            },
            {
              "parameter":"testparam3","value":[
          {"item_id":"SKU_12345","item_name":"Red Men's T Shirt","affiliation":"Brand X's store","coupon":"NEWCUST","discount":2.22,"index":0,"item_brand":"X","item_category":"Apparel","item_category2":"Adult","item_category3":"Shirts","item_category4":"Crew","item_category5":"Short sleeve","item_list_id":"related_products","item_list_name":"Related Products","item_variant":"red","location_id":"fedgdfgfddfgdfgds","price":9.99,"quantity":1},
                 {"item_id":"SKU_12346","item_name":"Blue Women's T-Shirt","affiliation":"Brand X's store","coupon":"NEWCUST","discount":1.33,"index":1,"item_brand":"X","item_category":"Apparel","item_category2":"Adult","item_category3":"Shirts","item_category4":"Crew","item_category5":"Short sleeve","item_list_id":"related_products","item_list_name":"Related Products","item_variant":"blue","location_id":"hgfh5hgfg","price":20.99,"quantity":2}
        ]
            }
          ],
          "timeout": "15000"
      };
      
      // Call runCode to run the template's code.
      runCode(mockData);
      
      // Verify that the tag finished successfully.
      assertApi('gtmOnSuccess').wasCalled();


___NOTES___

Created on 10/08/2023, 20:17:34
