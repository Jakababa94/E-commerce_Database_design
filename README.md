# 🕊️ Church Choir Uniforms E-commerce Database

This project is a relational database schema tailored for an e-commerce platform that specializes in church choir uniforms. The design supports dynamic product variations (e.g., size and color), detailed product attributes, and robust classification.

---

## 📦 Database Overview

The schema includes the following components:

- **Brand**: Stores branding details like name, logo, and description.
- **Product Category**: Categorizes products (e.g., robes, hats, accessories).
- **Product**: Central entity with basic product details and links to brand and category.
- **Product Image**: Manages image URLs associated with products.
- **Color**: Defines available color options for uniform variations.
- **Size Category & Size Option**: Enables size classification (e.g., S, M, L or numerical sizes).
- **Product Variation**: Links products to their specific size and color combinations.
- **Product Item**: Represents a specific stock keeping unit (SKU) for each variation.
- **Attribute Category, Type & Product Attribute**: Allows flexible product metadata such as material, weight, or care instructions.

---

## 🧱 ER Diagram

The ERD visualizing these relationships between entities such as brand,products and more:
- [`ERD_Diagram.png`](https://drive.google.com/file/d/1oioBvJxDLLvL9l2c2huoYkhx1YmV9XGI/view?usp=sharing)

---

## 🛠️ Database Tables

See [`schema.sql`](./schema.sql) for the full SQL schema, including:
- Table creation
- Primary and foreign keys
- Data types and constraints

---

## 🔄 Example Use Cases

- **Display available choir robes in red, size M**
- **Filter robes by material (e.g., satin)**
- **Track stock levels for each SKU**
- **Categorize uniforms by function (e.g., robes, hats, sashes)**

---

## 💡 Future Enhancements

- Add user management and orders
- Support media storage (e.g., videos, 3D views)
- Enable multilingual descriptions for products
- Implement full-text search on attributes

---

## 🧑‍💻 Tech Stack

- MySQL
- ERD designed with [draw.io](https://draw.io)

---


