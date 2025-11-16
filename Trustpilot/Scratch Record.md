## 1. Company information and some comments

(eg.FPmarkets)

Total number of column: 35

Column names included:

| Column Name                                                 | Data Type | Description                                                  |
| ----------------------------------------------------------- | --------- | ------------------------------------------------------------ |
| query                                                       | object    | The name of the company or the link it grab the data         |
| name                                                        | object    | The name of the company                                      |
| rating                                                      | float64   | The total rate of this company                               |
| reviews                                                     | int64     | The total number of reviews                                  |
| site                                                        | object    | The link of the company                                      |
| profile_image                                               | object    | The link of the company logo picture                         |
| page_url                                                    | object    | The link of the company in Trustpilot                        |
| claimed                                                     | bool      | has claimed?                                                 |
| closed                                                      | bool      | The status of the company                                    |
| temporarily_closed                                          | bool      | The status of the company                                    |
| categories                                                  | object    | The categories for this company (normally more than one categories) |
| email                                                       | object    | The email address of the company                             |
| phone                                                       | object    | The phone number of the company provided                     |
| address                                                     | object    | The address of the company                                   |
| city                                                        | object    | The city located of the company                              |
| country                                                     | object    | The country located of the company                           |
| zip_code                                                    | int64     | Post code of the company                                     |
| activity_is_using_paid_features                             | bool      | Does the company use Trustpilot's paid features?             |
| activity_has_subscription                                   | bool      | Does the company has subscription of Trustpilot              |
| activity_is_asking_for reviews                              | bool      | Does the company proactively solicit reviews from customers? |
| activity_claimed_date                                       | object    | The date of the company claimed its business profile on Trustpilot |
| activity_is_claimed                                         | bool      | Has the company claimed its Trustpilot business profile?     |
| activity_previously_claimed                                 | bool      | Has the company previously claimed its Trustpilot homepage?  |
| activity_reply_behavior_average_days_to_reply               | float64   | Average number of days required to respond to a comment      |
| activity_reply_behavior_last_reply_to_negative_review       | object    | The timestamp of the most recent reply to a negative review  |
| activity_reply_behavior_negative_reviews_with_replies_count | int64     | Number of negative reviews the company has responded to      |
| activity_reply_behavior_reply_percentage                    | float64   | Percentage of the company rely the comments                  |
| activity_reply_behavior_total_negative_reviews_count        | int64     | Total negative reviews count of the company                  |
| activity_verification_verified_by_google                    | bool      | Has the company been verified by Google?                     |
| activity_verification_verified_payment_method               | bool      | Has the company verified the payment method?                 |
| activity_verification_verified_user_identity                | bool      | Has the company account passed identity verification?        |
| activity_has_business_unit_merge_history                    | bool      | Has the company ever merged with other Trustpilot business units? |
| activity_basiclink_rate                                     | int64     | Click/usage frequency of “Basic Link”                        |
| activity_hide_basic_link_alert                              | bool      | Does the company hide basic link hints?                      |
| activity_is_using_a_i_responses                             | bool      | Does the company use AI to automatically respond to reviews (Trustpilot AI Response)? |

Note: "Basic Link" is Trustpilot provides companies with a basic sharing link.



## 2. Get all the company information by one category

(eg. insurance)

Total column names: 89

Column name included:

| Column Name                                                  | Data Type        | Description                                                  |
| ------------------------------------------------------------ | ---------------- | ------------------------------------------------------------ |
| query                                                        | object           | The name of the category                                     |
| name                                                         | object           | The name of the company                                      |
| rating                                                       | floate64         | The total rate of this company                               |
| reviews                                                      | int64            | The total number of reviews                                  |
| site                                                         | object           | The link of the company                                      |
| profile_image                                                | object           | The link of the company logo picture                         |
| page_url                                                     | object           | The link of the company in Trustpilot                        |
| claimed                                                      | float64          | <it is empty>                                                |
| closed                                                       | float64          | <it is empty>                                                |
| temporarily_closed                                           | float64          | <it is empty>                                                |
| categories                                                   | object           | The categories for this company (normally more than one categories) |
| email                                                        | object           | The email address of the company                             |
| email.emails_validator.status                                | object           | Status of the provided email address                         |
| email.emails_validator.status_details                        | object           | Status of the provided email address - Supplementary         |
| phone                                                        | object           | The phone number of the company provided                     |
| address                                                      | object           | The address of the company                                   |
| city                                                         | object           | The city located of the company                              |
| country                                                      | object           | The country located of the company                           |
| zip_code                                                     | object           | Post code of the company                                     |
| email_1                                                      | object           | Email address 1                                              |
| email_1.emails_validator.status                              | object           | Status of the provided email address 1                       |
| email_1.emails_validator.status_details                      | object           | Status of the provided email address 1- Supplementary        |
| email_2 and email_3 basic information as same as above       | object           |                                                              |
| phone_1                                                      | float64          | phone number 1                                               |
| phone_2                                                      | float64          | phone number 2                                               |
| phone_3                                                      | float64          | phone number 3                                               |
| 15 social medias                                             | object / float64 | Social media account of this company                         |
| website_title                                                | object           | The title of company website                                 |
| website_generator                                            | object           | Website generator                                            |
| website_description                                          | object           | Description of the website                                   |
| website_keywords                                             | object           | Keyword of the website                                       |
| website_has_fb_pixel                                         | object           | whether website has good pixel ( true /false/ null)          |
| website_has_google_tag                                       | object           | whether the website has google tag (true/fasle/null)         |
| company_insights.city                                        | object           | The city of the company                                      |
| company_insights.country                                     | object           | The country of the company                                   |
| company_insights.description                                 | object           | The description of the company                               |
| company_insights.employees                                   | float64          | The amount of employees in  the company                      |
| company_insights.founded_year                                | float64          | The year the company was founded                             |
| company_insights.industry                                    | object           | Company Industry Category                                    |
| company_insights.is_public                                   | object           | Whether is public (true/false/null)                          |
| company_insights.linkedin_bio                                | object           | The description in linkedin                                  |
| company_insights.linkedin_company_page                       | object           | The link of company in linkedin                              |
| company_insights.name                                        | object           | The name of the company                                      |
| company_insights.revenue                                     | float64          | The income of the company                                    |
| company_insights.state                                       | object           | The state of the company                                     |
| company_insights.timezone                                    | object           | The timezone of the company                                  |
| company_insights.twitter_handle                              | object           | Twitter name                                                 |
| company_insights.address                                     | object           | Address of the company                                       |
| company_insights.facebook_company_page                       | object           | the link of the company facebook page                        |
| company_insights.phone                                       | object           | phone                                                        |
| company_insights.phone.whitepages_phones.address             | object           | The address                                                  |
| company_insights.phone.whitepages_phones.fastbackgroundcheck | object           | Phon number from FastBackGroundCheck                         |
| company_insights.phone.whitepages_phones.lookup_type         | object           | The type of telephone number                                 |
| company_insights.phone.whitepages_phones.name                | object           | Business name associated with the telephone number           |
| company_insights.zip                                         | object           | Postcode of the company's registered address                 |

Those 15 social medias included: (Data type are object and float64)

facebook, instagram, linkedin, tiktok, medium, reddit, skype, snapchat, telegram, whatsapp, twitter, vimeo, youtube, github, crunchbase



## 3. Get all comments from one company

(eg. Go Markets)

Total number of columns name: 18

Column names included:

| Column Name                       | Data Type | Description                                                  |
| --------------------------------- | --------- | ------------------------------------------------------------ |
| query                             | object    | The link it grab the data                                    |
| total_reviews                     | int64     | Total number of reviews of this company                      |
| review_rating                     | int64     | The rating given by the reviewer                             |
| review_title                      | object    | The title of the review                                      |
| review_text                       | object    | The text of the review                                       |
| review_likes                      | int64     | The like s rating given by the reviewer (1-5)                |
| review_timestamp                  | int64     | The timestamp record in the system start from 1970-01-01     |
| review_datetime_utc               | object    | The datetime for the reviewer make the comment               |
| review_id                         | object    | The identification number of the review                      |
| review_verified                   | bool      | Whether the review verified (True/False)                     |
| author_title                      | object    | The Name of the reviewer                                     |
| author_id                         | object    | The identification number of the reviewer                    |
| author_image                      | object    | The profile of reviewer                                      |
| author_reviews_number             | int64     | Total number of reviews the author has written across all companies on Trustpilot |
| author_reviews_number_same_domain | int64     | Number of reviews the same author has written for this same company. |
| author_country_code               | object    | Where is the reviewer from                                   |
| owner_answer                      | object    | The reply content for the company to the reviewer            |
| owner_answer_date                 | object    | The date and time for the company make the reply.            |



## 4. Aggregated review data for a specific individual company 

(eg. Go Markets)

Total number of columns: 2

Column names included:

| Column Name     | Data Type | Description                                          |
| --------------- | --------- | ---------------------------------------------------- |
| query           | object    | The name of the company or the link it grab the data |
| reviews_summary | obejct    | Reviews Summary                                      |



## 5. Trustpilot automatically analyzes the sentiment of reviews.

(eg. FP Market)

Total number of columns: 7

| Column Name      | Data Type | Description                                                  |
| ---------------- | --------- | ------------------------------------------------------------ |
| query            | object    | The name of the company or the link it grab the data         |
| sentiment_score  | float64   | Sentiment Score                                              |
| positive_percent | int64     | The percentage  of the positive comments                     |
| negative_percent | int64     | The percentage of the negative comments                      |
| neutral_percent  | int64     | The percentage of the neutral comments                       |
| top_complaints   | object    | The content of the “primary complaint categories” appearing in the company's reviews |
| top_praises      | object    | The content of the “primary praise categories” appearing in the company's reviews |

