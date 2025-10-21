from bs4 import BeautifulSoup

with open("example1.html", "r", encoding="utf-8") as f:
    soup = BeautifulSoup(f, "html.parser")

reviews = soup.find_all("div", {"title": "Click to expand"})

data = []
for r in reviews:
    review_id = r.get("id")
    rating = r.find("span", {"class": "XsNkSe"}).text.strip() if r.find("span", {"class": "XsNkSe"}) else None
    user = r.find("span", {"role": "link"})
    user_name = user.text.strip() if user else None
    date = r.find("time")
    review_date = date.get("datetime") if date else None
    text = r.find("p", {"class": "KI3F_J X9VBGa"})
    review_text = text.text.strip() if text else None

    data.append({
        "review_id": review_id,
        "rating": rating,
        "user_name": user_name,
        "review_date": review_date,
        "review_text": review_text
    })

print(data[:2])