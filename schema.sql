-- create database for a church-choir-uniforms merchandise store
CREATE DATABASE church_choir_uniforms_store;
USE church_choir_uniforms_store;

-- Brand
CREATE TABLE brand (
    brand_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    logo_url VARCHAR(255)
);

-- Product Category
CREATE TABLE product_category (
    category_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT
);

-- Product
CREATE TABLE product (
    product_id INT PRIMARY KEY,
    name VARCHAR(150),
    brand_id INT,
    category_id INT,
    base_price DECIMAL(10,2),
    description TEXT,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

-- Product Image
CREATE TABLE product_image (
    image_id INT PRIMARY KEY,
    product_id INT,
    image_url VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Color
CREATE TABLE color (
    color_id INT PRIMARY KEY,
    name VARCHAR(50),
    hex_code VARCHAR(7)
);

-- Size Category
CREATE TABLE size_category (
    size_category_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT
);

-- Size Option
CREATE TABLE size_option (
    size_option_id INT PRIMARY KEY,
    size_category_id INT,
    label VARCHAR(20),
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

-- Product Variation
CREATE TABLE product_variation (
    variation_id INT PRIMARY KEY,
    product_id INT,
    color_id INT,
    size_option_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id),
    FOREIGN KEY (size_option_id) REFERENCES size_option(size_option_id)
);

-- Product Item (actual SKU)
CREATE TABLE product_item (
    item_id INT PRIMARY KEY,
    variation_id INT,
    sku VARCHAR(100),
    quantity_in_stock INT,
    price_override DECIMAL(10,2),
    FOREIGN KEY (variation_id) REFERENCES product_variation(variation_id)
);

-- Attribute Category
CREATE TABLE attribute_category (
    attribute_category_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Attribute Type
CREATE TABLE attribute_type (
    type_id INT PRIMARY KEY,
    name VARCHAR(50) -- text, number, boolean, etc.
);

-- Product Attribute
CREATE TABLE product_attribute (
    attribute_id INT PRIMARY KEY,
    product_id INT,
    attribute_category_id INT,
    type_id INT,
    name VARCHAR(100),
    value TEXT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id),
    FOREIGN KEY (type_id) REFERENCES attribute_type(type_id)
);
