# Conversion Events Server-side Tag for Google Tag Manager

Templated server-side 'tag' that sends events to The Trade Desk's Real Time Conversion Events API.

# Installation and Usage

- Go to **Server-side GTM container**.
- Go to **Templates**.
- Under **Tag Templates** select **New**.
- Select **Import** from the top right menu.
- Save the template.
- Go to **Tags**, and add the tag.

The full Conversion API reference can be found here: https://partner.thetradedesk.com/v3/portal/data/doc/DataConversionEventsApi

The Trade Desk suppports two approaches for tracking online interactions:
- **Event Mapping:** Events/conversions are captured using an Event Name (purchase, addtocart, etc) and optionally relevant ecommerce product details. This is particularly suited for Online ecommerce websites/apps focused on driving sales within the online platform, or Advertisers with a focus on driving users to particular transactions or interactions (newsletter signups, account signups, fund transfers, etc).
    - **Pre-requisites:** You will need a **Merchant ID** and **Event Tracker ID** from The Trade Desk platform.
- **URL Mapping:** This approach is suited for advertisers with content focused websites where the focus is on having users read information, or advertisers who have an existing Trade Desk Universal Pixel.
    - **Pre-requisites:** You will need an **Advertiser ID** and **Universal Pixel ID** from The Trade Desk platform.

Some suggested variables and field mappings to get started:


| Variable (choose your own name) | GTM Variable Type | Value                | Description                                                                                                                                                                                                                 | TTD Conversion API field       |
|---------------------------------|-------------------|----------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------|
| First-party TDID cookie         | Cookie Value      | ttd_TDID             | Value of the ttd_TDID cookie that was written to the first-party domain, typically by the either the Realtime ID JavaScript tag or server-side Cookie Sync Client.                                                          | User/Device Identifier (ADID)  |
| GA4 Event IP Address            | Event Data        | ip_override          | This is the actual IP address of the user, which needs to be sent to The Trade Desk.                                                                                                                                        | User   IP Address (client_ip)  |
| GA4 Event Page URL              | Event Data        | page_location        | The website page that the event occurred on.                                                                                                                                                                                | Page URL (referrer_url)        |
| TTD Merchant ID                 | Constant          | (Merchant ID)        | The ID of the Merchant within The Trade Desk platform. The Trade Desk Account Manager can help provide this information. Each request must supply a Merchant ID or Advertiser ID (not both).                                | Merchant ID (merchant_id)      |
| TTD Event Tracker ID            | Constant          | (Event Tracker ID)   | The ID of the advertiser's Event Tracker within The Trade Desk platform. The Trade Desk Account Manager can help provide this information. Each request must supply an Event Tracker ID or Universal Pixel ID (not both).   | Tracking Tag ID (tracker_id)   |
| TTD Advertiser ID               | Constant          | (Advertiser ID)      | The ID of the Advertiser within The Trade Desk platform. The Trade Desk Account Manager can help provide this information. Each request must supply a Merchant ID or Advertiser ID (not both).                              | Advertiser ID (adv)            |
| TTD Universal Pixel ID          | Constant          | (Universal Pixel ID) | The ID of the advertiser's Universal Pixel within The Trade Desk platform. The Trade Desk Account Manager can help provide this information. Each request must supply an Event Tracker ID or Universal Pixel ID (not both). | Universal Pixel ID (upixel_id) |

# License

Refer to LICENSE file in the root directory of this source tree.
