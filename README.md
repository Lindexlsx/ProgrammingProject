<<<<<<< Updated upstream
# 🌱 Environmental Impact Calculator for Flat Roofs

A Java application that calculates the environmental impact (Global Warming Potential - GWP) of flat roof compositions, focused on learning how to build applications in a school context.

---

## 💡 Project Description

This educational project simulates the creation and environmental assessment of flat roof constructions. The following core functionalities are included:

- **Database of building material environmental data**
- **Add custom materials with environmental values**
- **Create and edit flat roof compositions**
- **Calculate total environmental impact per m²**
- **Display and compare environmental results**

> ⚠️ **Note**: This application is built for educational purposes and is **not suitable** for scientific or engineering-grade environmental calculations. Data and formulas are simplified to support learning objectives, not real-world precision.

---

## 🧰 Technologies Used

- Java (via IntelliJ IDEA)
- MySQL (via XAMPP & phpMyAdmin)
- GitHub for version control

---

## 📚 Libraries Used

The project uses standard Java SE and JDBC:

- **Java SE (Standard Edition)**: No external frameworks or dependencies
- **MySQL JDBC Driver**  
  Enables database connectivity from Java to a local MySQL database  
  🔗 https://dev.mysql.com/downloads/connector/j/

---

## 🛠️ External Tools

❌ **No external design or planning tools** (e.g., Figma, Trello, etc.) were used during development.

---

## 🗃️ Database

The application connects to a MySQL database `environmental_impact` containing:

### `construction_product`
| Field               | Type         | Description                                      |
|---------------------|--------------|--------------------------------------------------|
| `id`                | INT          | Auto-increment primary key                      |
| `name`              | VARCHAR(255) | Name of the material                            |
| `layer`             | VARCHAR(100) | Layer type (e.g. Roof deck, Thermal insulation) |
| `functional_unit`   | ENUM         | 'm', 'm2', 'm3', 'kg'                            |
| `mass_density`      | DOUBLE       | Required only for 'kg'                          |
| `environmental_impact` | DOUBLE   | CO₂ impact per functional unit (kg CO₂-eq)      |
| `unit_price`        | DOUBLE (nullable) | Optional material cost per unit           |
| `image`             | TEXT (nullable) | Path or URL to an image                    |

### `roof_project`
| Field               | Type         | Description                      |
|---------------------|--------------|----------------------------------|
| `id`                | INT          | Auto-increment primary key      |
| `project_name`      | VARCHAR(100) | Name of the roof project        |
| `total_impact`      | DOUBLE       | Total GWP per m²                |

---

## 📊 Data Source

The emission factors used in the application are based on CO₂ datasets published by **Buildwise** and are publicly available at:

🔗 https://www.buildwise.be/nl/themas/duurzaam-bouwen/milieuvriendelijk-bouwen/de-bouwwerf-en-het-bedrijfsbeheer-optimaliseren/scope-3-berekeningen/

---

## 🤖 AI Support

Parts of the code, structure, and documentation were developed with the help of **ChatGPT (OpenAI)**. ChatGPT was used to:
- Translate functional needs into Java code
- Handle database integration (JDBC)
- Suggest object-oriented design patterns
- Explain errors and refine existing code
- Draft documentation (such as this README)

=======
# 🌱 Environmental Impact Calculator for Flat Roofs

A Java application that calculates the environmental impact (Global Warming Potential - GWP) of flat roof compositions, focused on learning how to build applications in a school context.

---

## 💡 Project Description

This educational project simulates the creation and environmental assessment of flat roof constructions. The following core functionalities are included:

- **Database of building material environmental data**
- **Add custom materials with environmental values**
- **Create and edit flat roof compositions**
- **Calculate total environmental impact per m²**
- **Display and compare environmental results**

> ⚠️ **Note**: This application is built for educational purposes and is **not suitable** for scientific or engineering-grade environmental calculations. Data and formulas are simplified to support learning objectives, not real-world precision.

---

## 🧰 Technologies Used

- Java (via IntelliJ IDEA)
- MySQL (via XAMPP & phpMyAdmin)
- GitHub for version control

---

## 📚 Libraries Used

The project uses standard Java SE and JDBC:

- **Java SE (Standard Edition)**: No external frameworks or dependencies
- **MySQL JDBC Driver**  
  Enables database connectivity from Java to a local MySQL database  
  🔗 https://dev.mysql.com/downloads/connector/j/

---

## 🛠️ External Tools

❌ **No external design or planning tools** (e.g., Figma, Trello, etc.) were used during development.

---

## 🗃️ Database

The application connects to a MySQL database `environmental_impact` containing:

### `construction_product`
| Field               | Type         | Description                                      |
|---------------------|--------------|--------------------------------------------------|
| `id`                | INT          | Auto-increment primary key                      |
| `name`              | VARCHAR(255) | Name of the material                            |
| `layer`             | VARCHAR(100) | Layer type (e.g. Roof deck, Thermal insulation) |
| `functional_unit`   | ENUM         | 'm', 'm2', 'm3', 'kg'                            |
| `mass_density`      | DOUBLE       | Required only for 'kg'                          |
| `environmental_impact` | DOUBLE   | CO₂ impact per functional unit (kg CO₂-eq)      |
| `unit_price`        | DOUBLE (nullable) | Optional material cost per unit           |
| `image`             | TEXT (nullable) | Path or URL to an image                    |

### `roof_project`
| Field               | Type         | Description                      |
|---------------------|--------------|----------------------------------|
| `id`                | INT          | Auto-increment primary key      |
| `project_name`      | VARCHAR(100) | Name of the roof project        |
| `total_impact`      | DOUBLE       | Total GWP per m²                |

---

## 📊 Data Source

The emission factors used in the application are based on CO₂ datasets published by **Buildwise** and are publicly available at:

🔗 https://www.buildwise.be/nl/themas/duurzaam-bouwen/milieuvriendelijk-bouwen/de-bouwwerf-en-het-bedrijfsbeheer-optimaliseren/scope-3-berekeningen/

---

## 🤖 AI Support

Parts of the code, structure, and documentation were developed with the help of **ChatGPT (OpenAI)**. ChatGPT was used to:
- Translate functional needs into Java code
- Handle database integration (JDBC)
- Suggest object-oriented design patterns
- Explain errors and refine existing code
- Draft documentation (such as this README)

>>>>>>> Stashed changes
All AI-suggested code was manually reviewed, tested, and integrated into the final application.