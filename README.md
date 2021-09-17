# StackOverflow Queries

Queries used on [pzwd.net](https://pzwd.net/t/top-of-stackoverflow).

## List

- [StackOverflow 最近 24 个月各个编程语言变化趋势（2021 年 9 月）](results/trends-in-the-number-of-new-questions-per-programming-languages-in-the-past-24-months-202109.md)
- [Most popular StackOverflow tags in 2Q 2021](results/most-popular-stackoverflow-tags-in-2q-2021.md)
- [Most popular StackOverflow tags in 1Q 2021](results/most-popular-stackoverflow-tags-in-1q-2021.md)
- [Most popular StackOverflow tags in 2020](results/most-popular-stackoverflow-tags-in-2020.md)
  - [Most popular StackOverflow tags in 4Q 2020](results/most-popular-stackoverflow-tags-in-4q-2020.md)
  - [Most popular StackOverflow tags in 3Q 2020](results/most-popular-stackoverflow-tags-in-3q-2020.md)
  - [Most popular StackOverflow tags in 2Q 2020](results/most-popular-stackoverflow-tags-in-2q-2020.md)
  - [Most popular StackOverflow tags in 1Q 2020](results/most-popular-stackoverflow-tags-in-1q-2020.md)
- [Most popular StackOverflow tags in 2019](results/most-popular-stackoverflow-tags-in-2019.md)
- [Most popular StackOverflow tags in 2018](results/most-popular-stackoverflow-tags-in-2018.md)

## Contributing

### Prepare

```sh
git clone https://github.com/pzwd-net/stackoverflow-queries.git

cd stackoverflow-queries

npm install
```

### Format SQL files

```sh
npm run format-sql
```

### Convert CSV to Markdown table

```sh
cat results/some.csv | node helpers/csv-to-markdown.js >> results/some.md
```

or

```sh
./helpers/csv2markdown.sh results/some.csv
```
