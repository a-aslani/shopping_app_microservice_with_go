CREATE TABLE IF NOT EXISTS attributes
(
    id          SERIAL PRIMARY KEY,
    category_id INT          NOT NULL,
    name        VARCHAR(255) NOT NULL,
    priority    INT         DEFAULT 0,
    status      INT         DEFAULT 0,
    created_at  TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at  TIMESTAMPTZ DEFAULT NULL,
    deleted_at  TIMESTAMPTZ DEFAULT NULL,
    CONSTRAINT fk_attribute_category FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX idx_attributes_priority ON attributes (priority);
CREATE INDEX idx_attributes_category_id ON attributes (category_id);
CREATE INDEX idx_attributes_status ON attributes (status);
CREATE INDEX idx_attributes_priority_status ON attributes (priority, status);