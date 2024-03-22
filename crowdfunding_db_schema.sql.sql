DROP TABLE "campaign";
DROP TABLE "contacts";
DROP TABLE "category";
DROP TABLE "subcategory";

CREATE TABLE category (
    category_id VARCHAR(4) PRIMARY KEY,
    category VARCHAR(30)
);
CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(220)
);
CREATE TABLE subcategory (
    subcategory_id VARCHAR(8),
    subcategory VARCHAR(25),
    PRIMARY KEY (subcategory_id)
);
CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(100),
    description VARCHAR(220),
    goal DECIMAL,
    pledged DECIMAL,
    outcome VARCHAR(12),
    backers_count INT,
    country VARCHAR(2),
    currency VARCHAR(3),
    launch_date TIMESTAMP,
    end_date TIMESTAMP,
	category_id VARCHAR(4),
    subcategory_id VARCHAR(8)
);

SELECT * from campaign;
SELECT * from contacts;
SELECT * from category;
SELECT * from subcategory;

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");



