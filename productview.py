from bs4 import BeautifulSoup
import csv
import re

with open("example1.html", "r", encoding="utf-8") as f:
    soup = BeautifulSoup(f, "html.parser")

# Find all reviews area
reviews = soup.find_all("div", {"data-review-has-attachments": "false"})

data = []

# Fetch the fields 
for review in reviews:
    review_id = review.get("data-track-impression", "")
    # -- Review ID --
    if "reviewId" in review_id:
        review_id = review_id.split("reviewId·:·")[1].split("·")[0]

    # -- Rating --
    rating_tag = review.find("div", style=lambda x: x and "--pr-rating-score" in x)
    rating = rating_tag["style"].split(":")[1].rstrip("}") if rating_tag else None
     
    # -- Username --
    author_block = review.find("div", {"data-ctx-namespace": "author"})
    username = None
    if author_block:
        username_span = author_block.find("span", class_=re.compile("aoI_35"))
        if username_span:
            username = username_span.get_text(strip=True)

    # -- Review time
    time = review.find("time")
    review_date = time["datetime"] if time else None

    data.append({
        "review_id": review_id,
        "rating": rating,
        "username": username,
        "review_date": review_date
    })

# 4. Write into CSV
with open("dyson_reviews.csv", "w", newline="", encoding="utf-8") as csvfile:
    writer = csv.DictWriter(csvfile, fieldnames=["review_id", "rating", "username", "review_date"])
    writer.writeheader()
    writer.writerows(data)

print(f"There are {len(data)} reviews, saved as dyson_reviews.csv")
