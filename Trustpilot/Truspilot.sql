CREATE TABLE "company" (
  "company_id" integer PRIMARY KEY,
  "query" char(200),
  "name" char(50) NOT NULL,
  "rating" float NOT NULL,
  "total_reviews" integer NOT NULL,
  "site" char(200) NOT NULL,
  "profile_image" cha(200) NOT NULL,
  "page_url" char(200) NOT NULL,
  "claimed" bool NOT NULL,
  "closed" bool NOT NULL,
  "temporarily_closed" bool NOT NULL,
  "email" char(50),
  "phone" char(50),
  "address" char(200),
  "city" char(50),
  "country" char(100),
  "zip_code" int(64)
);

CREATE TABLE "company_activity" (
  "company_id" integer NOT NULL,
  "activity_is_using_paid_features" bool,
  "activity_has_subscription" bool,
  "activity_is_asking_for_reviews" bool,
  "activity_claimed_date" bool,
  "activity_is_claimed" bool,
  "activity_previously_claimed" bool,
  "activity_reply_behavior_average_days_to_reply" bool,
  "activity_reply_behavior_last_reply_to_negative_review" bool,
  "activity_reply_behavior_negative_reviews_with_replies_count" bool,
  "activity_reply_behavior_reply_percentage" bool,
  "activity_reply_behavior_total_negative_reviews_count" bool,
  "activity_verification_verified_by_google" bool,
  "activity_verification_verified_payment_method" bool,
  "activity_verification_verified_user_identity" bool,
  "activity_has_business_unit_merge_history" bool,
  "activity_basiclink_rate" int64,
  "activity_hide_basic_link_alert" bool,
  "activity_is_using_a_i_responses" bool
);

CREATE TABLE "comapny_insight" (
  "company_id" int NOT NULL,
  "social_media_15" object,
  "website_title" object,
  "website_generator" object,
  "website_description" object,
  "website_keywords" object,
  "website_has_fb_pixel" object,
  "website_has_google_tag" object,
  "company_insights_city" object,
  "company_insights_country" object,
  "company_insights_description" object,
  "company_insights_employees" float64,
  "company_insights_founded_year" float64,
  "company_insights_industry" object,
  "company_insights_is_public" object,
  "company_insights_linkedin_bio" object,
  "company_insights_linkedin_company_page" object,
  "company_insights_name" object,
  "company_insights_revenue" float64,
  "company_insights_state" object,
  "company_insights_timezone" object,
  "company_insights_twitter_handle" object,
  "company_insights_address" object,
  "company_insights_facebook_company_page" object,
  "company_insights_phone" object,
  "company_insights_phone_whitepages_phones_address" object,
  "company_insights_phone_whitepages_phones_fastbackgroundcheck" object,
  "company_insights_phone_whitepages_phones_lookup_type" object,
  "company_insights_phone_whitepages_phones_name" object,
  "company_insights_zip" object
);

CREATE TABLE "reviews" (
  "review_id" object PRIMARY KEY,
  "company_id" integer,
  "author_id" object,
  "review_rating" object,
  "review_title" object,
  "review_text" object,
  "review_likes" int64,
  "review_timestamp" int64,
  "review_datetime_utc" object,
  "review_verified" bool,
  "owner_answer" object,
  "owner_answer_date" object
);

CREATE TABLE "reviewer" (
  "author_id" object PRIMARY KEY,
  "author_title" object,
  "author_image" object,
  "author_reviews_number" int64,
  "author_reviews_number_same_domain" int64,
  "author_country_code" object
);

CREATE TABLE "review_sentiment" (
  "company_id" int NOT NULL,
  "sentiment_score" float64,
  "positive_percent" int64,
  "negative_percent" int64,
  "neutral_percent" int64,
  "top_complaints" object,
  "top_praises" object
);

CREATE TABLE "review_summay" (
  "company_id" int,
  "reviews_summary" object
);

CREATE TABLE "scarpe_record" (
  "id" int PRIMARY KEY,
  "query" object,
  "scrape_time" datetime
);

ALTER TABLE "company_activity" ADD FOREIGN KEY ("company_id") REFERENCES "company" ("company_id");

ALTER TABLE "comapny_insight" ADD FOREIGN KEY ("company_id") REFERENCES "company" ("company_id");

ALTER TABLE "review_sentiment" ADD FOREIGN KEY ("company_id") REFERENCES "company" ("company_id");

ALTER TABLE "reviews" ADD FOREIGN KEY ("review_id") REFERENCES "company" ("company_id");

ALTER TABLE "reviews" ADD FOREIGN KEY ("review_id") REFERENCES "reviewer" ("author_id");
