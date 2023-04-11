const fs = require("node:fs");
const dataFilePath = __dirname + "/data.json";
const dataExist = fs.existsSync(dataFilePath);

if (!dataExist) {
  throw Error("Please provide data.json contains all the words");
}
const data = require(dataFilePath);
const totalWordsDisplayed = 5;
const allWords = data.vocabulary.word;
const getRandom = (array) => {
  const arrayLength = array.length;
  const randomIndex = Math.floor(Math.random() * (arrayLength - 0) + 0);
  return array[randomIndex];
};
const words = [];

for (let i = 0; i < totalWordsDisplayed; i++) {
  words.push(getRandom(allWords));
}
const stringArray = words.map((word) => {
  const def = word.definition;
  const defenition = typeof def === "string" ? def : def.join(", ");
  return `${word.kana} - ${defenition}`;
});
const displayText = stringArray.join("\n\n");
console.log(displayText);
