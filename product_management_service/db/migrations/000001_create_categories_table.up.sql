CREATE TABLE IF NOT EXISTS categories
(
    id         SERIAL PRIMARY KEY,
    parent_id  INT         DEFAULT NULL,
    name       VARCHAR(255)        NOT NULL,
    slug       VARCHAR(255) UNIQUE NOT NULL,
    priority   INT         DEFAULT 0,
    status     INT         DEFAULT 0,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ DEFAULT NULL,
    deleted_at TIMESTAMPTZ DEFAULT NULL,
    CONSTRAINT fk_categories_parent_id_id FOREIGN KEY (parent_id) REFERENCES categories (id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE INDEX idx_categories_parent_id ON categories (parent_id);
CREATE INDEX idx_categories_slug ON categories (slug);
CREATE INDEX idx_categories_priority ON categories (priority);