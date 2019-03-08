# PokeDash

Interactive dashboard built by aggregating data from PokeAPI and VGC tournament results. The dashboard shows statistics about Type usage, Pokemon usage, and Move usage in VGC tournaments. Learn what to expect and strategize Pokemon builds for your team.

## Getting Started

![Database Model](/docs/pokemon_diagram.png)

### Prerequisites

Conda or pip install the following libraries:

* selenium / BeautifulSoup4 - used to scrape dynamic web content
* pymysql / sqlalchemy - Python db connector and simplify writing queries
* plotly / dash - creates figures and dashboard
* pandas - read queries into data frames for easy manipulation
* MySQL - stores scraped data

### Setup

* Clone the repo

```
git clone https://github.com/autopylot/dashes.git

cd dashes/PokeDash
```
* Run sql script to setup database
```
mysql -u username -p database_name < pokemon_schema.sql
```
* Start Jupyter notebook and run cells to scrape data

## Roadmap

* Add more figures






