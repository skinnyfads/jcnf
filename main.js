const data = require(__dirname + "/data.json");

function generateBorderText() {
  const terminalWidth = process.stdout.columns;
  const characters = [];

  for (let i = 0; i < terminalWidth; i++) {
    characters.push("-");
  }
  return "\n" + characters.join("") + "\n";
}
function getRandom(array) {
  const arrayLength = array.length;
  const randomIndex = Math.floor(Math.random() * (arrayLength - 0) + 0);

  return array[randomIndex];
}
const borderText = generateBorderText();
const totalWordsDisplayed = 5;
const words = data.vocabulary.word;
const selectedWords = [];
const theCommand = process.argv[2];

for (let i = 0; i < totalWordsDisplayed; i++) {
  selectedWords.push(getRandom(words));
}
const stringArray = selectedWords.map((word) => {
  const def = word.definition;
  const defenition = typeof def === "string" ? def : def.join(", ");
  const kana = word.kana;
  const romaji = word.romaji;

  return `${kana} [ ${romaji} ] - ${defenition}`;
});
const displayText = stringArray.join("\n\n");

console.log(borderText);
console.log(`${theCommand}: command not found`);
console.log(borderText);
console.log(
  "Since you have typed the wrong command, here are some japanese words for you to memorize:"
);
console.log(borderText);
console.log(displayText);
console.log(borderText);
