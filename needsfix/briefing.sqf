// Add briefing here
// Keep in mind that they appear in the list in the opposite order they were added

// You can use <marker></marker> inside the text to point out a marker, usage is like this:
// There is an enemy base <marker name='markerName'>here</marker>.
// This will make a clickable link, which moves the map to the position of the marker

// You can also insert a picture with <img image="picture.paa" />
// Picture path needs to obviously exist

player createDiaryRecord["Diary", [
  "Execution",
  "The execution of the mission describes how players are supposed to deal with the enemy threats,
but without spoiling the mission or taking away the freedom of planning from the players."
]];

player createDiaryRecord["Diary", [
  "Enemy Forces",
  "Here you describe to the players what sort of intelligence is available about the enemy.
Be sensitive enough not to reveal too much or too little."
]];

player createDiaryRecord["Diary", [
  "Support",
  "List all the support available for the mission:<br/><br/>
- x vehicles.<br/>
- x weapons team.<br/>
- x CAS support.<br/>
- x mortar support.<br/>
- etc."
]];

player createDiaryRecord["Diary", [
  "Mission",
  "Describe here what are the players supposed to accomplish in the mission,
with as much clarity and brevity as possible.<br/><br/>"
]];

player createDiaryRecord ["Diary", [
  "Situation",
  "What led to the current situation? Who is attacking who?<br/><br/>
This section is more related to the lore of the mission if anything, so get creative."
]];
