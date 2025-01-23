CREATE TABLE variants
(
    id         SERIAL PRIMARY KEY,
    product_id INT            DEFAULT NULL,
    color      VARCHAR(100) NOT NULL,
    size       VARCHAR(100) NOT NULL,
    price      NUMERIC(15, 2) DEFAULT 0,
    discount   NUMERIC(15, 2) DEFAULT 0,
    priority   INT            DEFAULT 0,
    stock      INT            DEFAULT 0,
    status     INT            DEFAULT 0,
    created_at TIMESTAMPTZ    DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ    DEFAULT NULL,
    deleted_at TIMESTAMPTZ    DEFAULT NULL,
    CONSTRAINT fk_variants_product FOREIGN KEY (product_id) REFERENCES products (id)
);

CREATE INDEX idx_variants_id ON variants (id);
CREATE INDEX idx_variants_product_id ON variants (product_id);
CREATE INDEX idx_variants_status ON variants (status);
CREATE INDEX idx_variants_priority ON variants (priority);