CREATE TABLE IF NOT EXISTS products
(
    id          SERIAL PRIMARY KEY,
    category_id INT                 NOT NULL,
    name        VARCHAR(255)        NOT NULL,
    slug        VARCHAR(255) UNIQUE NOT NULL,
    status      INT         DEFAULT 0,
    priority    INT         DEFAULT 0,
    created_at  TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at  TIMESTAMPTZ DEFAULT NULL,
    deleted_at  TIMESTAMPTZ DEFAULT NULL,
    CONSTRAINT fk_product_category FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX idx_products_category_id ON products (category_id);
CREATE INDEX idx_products_slug ON products (slug);
CREATE INDEX idx_products_status ON products (status);
CREATE INDEX idx_products_priority ON products (priority);
CREATE INDEX idx_products_status_priority ON products (status, priority);