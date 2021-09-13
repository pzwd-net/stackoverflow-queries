const { readFileSync } = require("fs");
const csvToMarkdown = require("csv-to-markdown-table");

let input = process.argv[2];
if (!input) {
  input = "/dev/stdin";
}
let text = readFileSync(input).toString().replace(/"/g, '');
console.log(csvToMarkdown(text, ",", true));
