
ALTER TABLE
    countrylanguage
ADD
    CONSTRAINT fk_country_code FOREIGN KEY (countrycode) REFERENCES country (code);

