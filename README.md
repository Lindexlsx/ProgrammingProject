Voeg in je github repository een readme file toe met een overzicht van je gebruikte libraries.
Maak je gebruik van externe tools zoals bv. Figma of Trello plaats je ook in je readme file links hiernaar zodat alles duidelijk op dezelfde plaats staat.

# 🌱 Environmental Impact Calculator for Flat Roofs

A Java application that calculates the environmental impact (Global Warming Potential - GWP) of flat roof compositions, with a focus on circular construction principles. The app connects to a MySQL database to retrieve material data.

---

## 💡 Project Description

This application allows users to:
- Retrieve construction product data from a MySQL database
- Simulate roof build-ups by selecting layers and assigning thicknesses
- Automatically calculate the environmental impact per m²
- Prepare for comparison between alternative material compositions

---

## 🧰 Technologies Used

- Java (via IntelliJ IDEA)
- MySQL (via XAMPP & phpMyAdmin)
- GitHub for version control

---

## 📚 Libraries Used

- [MySQL Connector/J](https://dev.mysql.com/downloads/connector/j/)
  - JDBC driver to enable Java–MySQL communication
  - Required to connect to your MySQL database from the Java application

---

## 🛠️ External Tools

| Tool    | Description                            | Link                                |
|---------|----------------------------------------|-------------------------------------|
| Figma   | For UI wireframes or early designs     | *Insert your Figma link here*       |
| Trello  | Project planning and task management   | *Insert your Trello board link here* |

---

## 🗃️ Database

The application connects to a database named `environmental_impact`, which contains a table `construction_product` with the following fields:

- `id` *(AUTO_INCREMENT primary key)*
- `name`
- `layer`
- `functional_unit` (`ENUM`: 'm', 'm2', 'm3', 'kg')
- `mass_density` *(kg/m³)*
- `environmental_impact` *(kg CO₂-eq/kg)*
- `unit_price` *(optional)*
- `image` *(optional, URL or filepath)*

---

## 🚀 How to Run

1. Start MySQL via XAMPP
2. Open IntelliJ and run `Main.java`
3. Ensure your JDBC driver is included in the project libraries
4. Results are printed to the console based on database input

---

## 📝 To Do

- [ ] Add export to PDF or Excel
- [ ] Extend with UI (JavaFX or web)
- [ ] Add material compatibility checker

---

## 📬 Contact

Created by [Your Name]  
*To be used in the context of the Programming Project (Applied Bachelor in Computer Science).*