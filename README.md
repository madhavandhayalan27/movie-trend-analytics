# 🎬 Movie Trend Analytics

Big Data Analytics project using Apache Hive (Spark SQL) on MovieLens 25M and IMDb datasets.

## 📌 Project Overview
Analyzing movie trends using HiveQL queries on large-scale datasets stored in a distributed format.

## 📂 Datasets
- [MovieLens 25M](https://grouplens.org/datasets/movielens/25m/) — 25 million ratings
- [IMDb Datasets](https://datasets.imdbws.com/) — titles, names, ratings, principals

## 🔍 Analysis Tasks
| # | Task | Query File |
|---|------|-----------|
| 1 | Most Popular Genres Over Time | `hive/queries/genre_trends.hql` |
| 2 | Actor & Director Success Analysis | `hive/queries/actor_director_success.hql` |
| 3 | Rating Trends Over Time | `hive/queries/rating_trends.hql` |

## 📊 Output Charts
### Genre Popularity Over Time
![Genre Trends](results/charts/chart1_genre_trends.png)

### Actor/Director Success
![Actor Director](results/charts/chart2_actor_director.png)

### Rating Trends
![Rating Trends](results/charts/chart3_rating_trends.png)

## 🛠️ Tech Stack
- Apache Hive (via PySpark SQL)
- Google Colab
- Python (pandas, matplotlib)
- Datasets: MovieLens 25M + IMDb

## 👥 Team
- Madhavan D
- Magesha

## 🏫 Institution
SRM Institute of Science and Technology, Tiruchirappalli
