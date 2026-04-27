# 🧠 Bash Quiz CLI

A command-line quiz application built using **Bash scripting** and **JSON parsing**.
This project dynamically loads questions, randomizes them, and provides an interactive MCQ experience directly in the terminal.

---

## 🚀 Features

* 📂 Loads questions from a JSON file (`trivia.json`)
* 🔀 Random question selection using `$RANDOM`
* 🧩 Multiple-choice questions (MCQ format)
* ✅ Instant answer validation
* 💻 Fully terminal-based (no GUI required)

---

## 🛠️ Tech Stack

* Bash (Shell Scripting)
* `jq` (for JSON parsing)
* Linux (Ubuntu environment)

---

## 📁 Project Structure

```
.
├── script31T.sh   # Main quiz script
├── trivia.json    # Questions database
```

---

## ▶️ How to Run

### 1. Clone the repository

```
git clone https://github.com/rimmibhardwaj/bash-quiz-cli.git
cd bash-quiz-cli
```

### 2. Give execute permission

```
chmod +x script31T.sh
```

### 3. Run the script

```
./script31T.sh
```

---

## 📌 Example

```
What was Manfred von Richthofen's nickname?

1) The Red Baron  
2) The High Flying Ace  
3) The Blue Serpent  
4) The Germany Gunner  

#? 1  
This is correct! Well done!
```

---

## ⚡ Learnings

* Parsing JSON data in Bash using `jq`
* Writing modular shell scripts
* Handling randomness in CLI applications
* Debugging logical issues in scripts

---

## 🔮 Future Improvements

* Score tracking system
* Timer-based questions
* Multiple rounds / quiz levels
* Better UI formatting

---

## 🤝 Contributing

Feel free to fork the repo and improve it. Suggestions are always welcome!

---

## 📬 Connect

If you found this interesting, let’s connect on LinkedIn 🚀

