# 📁 XML Project Collection

Hello! 👋 Welcome to this project folder.
This is a collection of **4 mini projects** that store information in files and show it on a webpage.

Think of it like this:
> 🗂️ The XML/JSON file is like a **notebook** where we write down information.
> 🌐 The HTML file is like a **window** that lets you see and use that information nicely.

---

## 🗂️ What is XML?
XML is a way of storing information using labels called **tags**, just like putting things in labeled boxes.

Example:
```xml
<name>Alice</name>
<phone>+1-555-0101</phone>
```
This just means: the name is Alice and the phone number is +1-555-0101. Simple! 😊

---

## 🗂️ What is JSON?
JSON is another way of storing information, but it looks a little different. It uses curly brackets `{}`.

Example:
```json
{ "title": "Inception", "genre": "Sci-Fi", "rating": 8.8 }
```
Same idea — just a different way of writing it down.

---

## 🗂️ What is XSL?
XSL is like a **dress code** for XML. It tells the browser:
> "Hey, when you open this XML file, make it look pretty like THIS."

---

## 📂 The 4 Projects

---

### 📒 Project 1 — Address Book
**Folder:** `project 1/`

Imagine you have a little notebook where you write down your friends' names, phone numbers and emails.
That's exactly what this is!

| File | What it does |
|------|-------------|
| `contacts.xml` | The notebook — stores all contact details |
| `contacts.xsl` | Makes the notebook look pretty in the browser |
| `index.html` | The webpage — lets you search for any contact |

**How to use:**
1. Open `index.html` in your browser (through XAMPP or Live Server)
2. Type a name in the search box
3. See the contact details appear! 🎉

---

### 🎬 Project 2 — Movie Catalog
**Folder:** `project 2/`

Imagine a list of your favourite movies written down with their details.
This project stores movies and lets you search and filter them!

| File | What it does |
|------|-------------|
| `movies.json` | The list — stores movie title, genre, year and rating |
| `index.html` | The webpage — lets you search and filter movies |

**How to use:**
1. Open `index.html` through XAMPP
2. Type a movie name OR pick a genre from the dropdown
3. The matching movies show up instantly! 🍿

---

### 🍽️ Project 3 — Recipe Book
**Folder:** `project 3/`

Imagine a cookbook that stores recipes with all the ingredients and cooking steps.
This project does exactly that — and you can search for any recipe!

| File | What it does |
|------|-------------|
| `recipes.xml` | The cookbook — stores recipes, ingredients, steps and cooking time |
| `recipes.xsl` | Makes the cookbook look pretty when opened directly |
| `index.html` | The webpage — shows recipe cards you can search and filter |

**Recipes included:**
- 🍚 Jollof Rice
- 🍝 Spaghetti Bolognese
- 🥞 Pancakes
- 🥦 Vegetable Stir Fry

**How to use:**
1. Open `index.html` through XAMPP
2. Search by recipe name or pick a category
3. See the full recipe with ingredients and steps! 👨‍🍳

---

### 🌤️ Project 4 — Weather Forecast
**Folder:** `project 4/`

Imagine asking "what's the weather like in Tokyo?" and getting the answer instantly.
This project stores weather info for different cities and shows it when you search!

| File | What it does |
|------|-------------|
| `weather.xml` | Stores temperature, humidity, wind speed and condition for each city |
| `weather.xsl` | Makes the weather data look pretty when opened directly |
| `index.html` | The webpage — type a city name and see its weather |

**Cities included:** Lagos, London, New York, Tokyo, Dubai, Paris, Sydney

**How to use:**
1. Open `index.html` through XAMPP
2. Type a city name (e.g. `Tokyo`) and press Search or Enter
3. See the weather card pop up! ☀️

---

## 🚀 How to Run Any Project

You need **XAMPP** installed on your computer.

1. Copy the project folder (e.g. `project 3`) into 👉 `C:\xampp\htdocs\`
2. Open the **XAMPP Control Panel**
3. Click **Start** next to **Apache**
4. Open your browser and go to:
   ```
   http://localhost/project 3/index.html
   ```
5. That's it! 🎉

> ⚠️ Why XAMPP? Because the HTML pages fetch data from XML/JSON files using `fetch()`,
> and browsers block that when you just double-click the file. XAMPP acts as a tiny web server that makes it work properly.

---

## 🛠️ Technologies Used

| Technology | What it is |
|------------|-----------|
| XML | Stores structured data using tags |
| JSON | Stores structured data using key-value pairs |
| XSL | Styles and transforms XML for the browser |
| HTML | Builds the webpage the user sees |
| CSS | Makes the webpage look nice |
| JavaScript | Reads the data files and makes search work |
| XAMPP | Local web server so everything runs properly |

---

## 👶 Summary (for a toddler)

- We have **boxes** (XML/JSON) that hold information 📦
- We have **windows** (HTML) that let you see the information 🪟
- We have **decorators** (XSL/CSS) that make everything look pretty 🎨
- We have a **helper** (XAMPP) that connects the boxes to the windows 🔌

That's the whole project! 😄
