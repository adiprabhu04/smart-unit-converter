# 🔄 Smart Unit Converter with Natural Language Parsing

This is a command-line based unit converter that understands natural language queries like:

- `Convert 10 kilometers to meters`
- `How much is 3 hours in minutes?`
- `12 kg in grams?`

It’s built using **Lex (Flex)** and **Yacc (Bison)**, with the conversion logic handled in **C**. Despite being written in low-level tools, it mimics NLP-style understanding of user input — turning casual text into structured operations.

---

## 🚀 Features

- Understands flexible, natural sentence structures
- Supports unit conversions across:
  - Distance (km, m, cm, mm)
  - Weight (kg, g, mg)
  - Time (hours, minutes, seconds)
  - Volume (liters, milliliters)
  - Temperature (Celsius ↔ Fahrenheit)
- Case-insensitive, whitespace-tolerant
- Easy to extend with more units

---

## ⚙️ How to Compile & Run

1. **Install tools** (Linux/macOS):
   ```bash
   sudo apt install flex bison gcc

2. **Compile the program**:

   ```bash
   lex converter.l
   yacc -d converter.y
   gcc lex.yy.c y.tab.c conversion.c -o converter
   ```

3. **Run it**:

   ```bash
   ./converter
   ```

4. **Try inputs like**:

   ```
   Convert 5 kilometers to meters
   How much is 2 hours in minutes?
   100 Celsius in Fahrenheit
   ```

---

## 📁 File Structure

```
smart-unit-converter/
├── converter.l       # Lex file: Tokenizes words like "convert", "to", numbers, units
├── converter.y       # Yacc file: Parses the natural language grammar
├── conversion.c      # Handles actual logic for converting units
├── node.c / node.h   # (Optional) Used for syntax tree or output formatting
├── README.md         # Project documentation (you’re reading it)
```

---

## ✍️ Author

Built by [Aditya Prabhudessai](https://github.com/adiprabhu04)
Because writing a compiler that understands English just hits different 💥

---

## 🌱 Future Plans

* Add more unit categories (currency, area, speed)
* Add support for decimal and fractional input
* Build a web-based version using WebAssembly or Streamlit