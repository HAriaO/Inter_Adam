## ProductReview.com.au

### Data Access & Technical Interface Status

No official “public review API” or data export interface targeting all users or external developers has been found in publicly available documentation. In other words: while the platform offers interfaces/integrations for merchants, it does not necessarily provide an API allowing third parties to freely retrieve all reviews.

However, third-party tools/platforms claim to scrape review data from ProductReview.com.au, such as:

- Apify hosts the “Productreviews Reviews Spider” specifically designed to scrape ProductReview.com.au reviews, outputting structured JSON.

https://apify.com/getdataforme/productreviews-reviews-spider/api/python

- Similarly, the “Product Reviews AU Scraper” also specifies targeting ProductReview.com.au for scraping.

https://apify.com/abotapi/product-reviews-australia-scraper/api?utm_source=chatgpt.com

Note: Technically, ingestion is *feasible* since third-party scraping tools exist. However, from a compliance/stability perspective, you must verify copyright/platform policies, anti-scraping protections, data quality, and API sustainability.

### Structural Features from HTML

| Fields        | Source example                                               |
| ------------- | ------------------------------------------------------------ |
| `object_name` | `<span class="wx8BAP _MZQc5" data-track-ga-click="{·category·:·listing_tree_navigation·,·label·:·dyson-v8·}">Dyson V8</span>` |
| `rating`      | `<style="--pr-rating-score:5">`                              |
| `user_name`   | `<span role="link" class="z8GyuX _MZQc5 aoI_35 tYBB5c pm6Psh" data-track-ga-click="{·category·:·link_to_profile·}">Alan Reet</span>` |
| `review_date` | `<time datetime="2025-10-09T02:01:15.000Z">2w</time>`        |
| `review_id`   | shown below                                                  |

![image-20251021213913784](D:\Tong_Year\蒸汽求职\Aden\image-20251021213913784.png)

## Trustpilot

Request APIs: https://developers.trustpilot.com/authentication

https://developers.trustpilot.com/data-solutions-get-started

