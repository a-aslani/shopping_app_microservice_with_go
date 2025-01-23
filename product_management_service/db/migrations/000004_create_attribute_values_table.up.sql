CREATE TABLE IF NOT EXISTS attribute_values
(
    id           SERIAL PRIMARY KEY,
    product_id   INT NOT NULL,
    attribute_id INT NOT NULL,
    value        VARCHAR(255),
    priority     INT         DEFAULT 0,
    created_at   TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at   TIMESTAMPTZ DEFAULT NULL,
    deleted_at   TIMESTAMPTZ DEFAULT NULL,
    CONSTRAINT fk_attribute_value_product FOREIGN KEY (product_id) REFERENCES products (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_attribute_value_attribute FOREIGN KEY (attribute_id) REFERENCES attributes (id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE INDEX idx_attribute_values_product_id ON attribute_values (product_id);
CREATE INDEX idx_attribute_values_attribute_id ON attribute_values (attribute_id);
CREATE INDEX idx_attribute_values_priority ON attribute_values (priority);