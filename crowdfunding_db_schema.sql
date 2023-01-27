-- Creation of Tables and

CREATE TABLE "category" (
    "category_id" varchar(30) PRIMARY KEY NOT NULL,
    "category" varchar(30)   NOT NULL,
);


CREATE TABLE "contacts" (
    "contact_id" int  PRIMARY KEY NOT NULL,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "email" varchar(50) NOT NULL
    );


CREATE TABLE "subcategory" (
    "subcategory_id" varchar(20) PRIMARY KEY NOT NULL,
    "subcategory" varchar(50) NOT NULL
    );


CREATE TABLE "Campaign" (
    "cf_id" int PRIMARY KEY NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(100),
    "description" varchar(100),
    "goal" FLOAT,
    "pledged" FLOAT,
    "outcome" varchar(50),
    "backers_count" int,
    "country" varchar(50),
    "currency" varchar(20),
    "launch_date" Date,
    "end_date" Date,
    "category_id" varchar(30),
    "subcategory_id" varchar(30),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id), 
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

