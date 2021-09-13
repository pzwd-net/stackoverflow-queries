# StackOverflow Queries

Queries used on [pzwd.net](https://pzwd.net/t/top-of-stackoverflow).

## List

- [Most popular StackOverflow tags in 3Q 2020](results/most-popular-stackoverflow-tags-in-3q-2000.md)
- [Most popular StackOverflow tags in 2Q 2020](results/most-popular-stackoverflow-tags-in-2q-2000.md)
- [Most popular StackOverflow tags in 1Q 2020](results/most-popular-stackoverflow-tags-in-1q-2000.md)

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
