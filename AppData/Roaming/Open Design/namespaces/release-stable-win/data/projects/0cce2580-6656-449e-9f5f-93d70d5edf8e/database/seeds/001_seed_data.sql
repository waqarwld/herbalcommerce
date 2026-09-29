-- Seed data for development

-- Roles
INSERT INTO roles (name, description, permissions) VALUES
('customer', 'Regular customer', '["view_products", "place_orders", "write_reviews", "view_orders"]'),
('admin', 'Administrator', '["*"]'),
('inventory_manager', 'Inventory manager', '["view_inventory", "manage_inventory", "view_products"]'),
('order_manager', 'Order manager', '["view_orders", "manage_orders"]'),
('content_manager', 'Content manager', '["manage_content", "view_products"]'),
('super_admin', 'Super administrator', '["*"]');

-- Admin user
INSERT INTO users (email, password_hash, first_name, last_name, role) VALUES
('admin@herbalcommerce.com', '$2a$12$LQv3c1yqBWVHxkd0LHAkCOQz7T1sB.xJq6a0M9o4q7J7y7y7y7y7', 'Admin', 'User', 'super_admin');

-- Categories
INSERT INTO categories (name, slug, description, health_goal, sort_order) VALUES
('Loose Herbs', 'loose-herbs', 'Dried loose herbs for teas and remedies', 'general_wellness', 1),
('Herbal Teas', 'herbal-teas', 'Premium herbal tea blends', 'relaxation', 2),
('Tinctures', 'tinctures', 'Liquid herbal extracts', 'immunity', 3),
('Capsules', 'capsules', 'Herbal capsules for convenience', 'general_wellness', 4),
('Powders', 'powders', 'Herbal powders for cooking and remedies', 'digestion', 5),
('Essential Oils', 'essential-oils', 'Pure essential oils', 'relaxation', 6);

-- Ingredients
INSERT INTO ingredients (name, latin_name, description, health_benefits) VALUES
('Turmeric', 'Curcuma longa', 'Anti-inflammatory spice', 'Anti-inflammatory, antioxidant'),
('Ginger', 'Zingiber officinale', 'Digestive aid', 'Digestive health, nausea relief'),
('Chamomile', 'Matricaria chamomilla', 'Calming herb', 'Sleep support, relaxation'),
('Echinacea', 'Echinacea purpurea', 'Immune booster', 'Immune system support'),
('Peppermint', 'Mentha piperita', 'Digestive herb', 'Digestive comfort, fresh breath'),
('Lavender', 'Lavandula angustifolia', 'Calming herb', 'Stress relief, sleep support'),
('Elderberry', 'Sambucus nigra', 'Immune support', 'Immune system, antioxidants'),
('Ashwagandha', 'Withania somnifera', 'Adaptogenic herb', 'Stress relief, energy');

-- Products
INSERT INTO products (sku, name, slug, description, product_type, category_id, price, sale_price, stock_status, status, is_featured) VALUES
('TH-001', 'Turmeric Blend', 'turmeric-blend', 'Premium turmeric blend with black pepper for enhanced absorption', 'blend', 1, 24.99, 19.99, 'in_stock', 'active', true),
('HT-001', 'Chamomile Sleep Tea', 'chamomile-sleep-tea', 'Organic chamomile blend for restful sleep', 'herbal_tea', 2, 12.99, null, 'in_stock', 'active', true),
('TC-001', 'Echinacea Tincture', 'echinacea-tincture', 'Alcohol-free echinacea extract for immune support', 'tincture', 3, 18.99, null, 'in_stock', 'active', false),
('CP-001', 'Turmeric Capsules', 'turmeric-capsules', 'Standardized curcumin capsules', 'capsule', 4, 29.99, 24.99, 'in_stock', 'active', false);

-- Inventory
INSERT INTO inventory (product_id, batch_number, quantity, min_stock_level, reorder_level, manufacturing_date, expiration_date) VALUES
(1, 'BATCH-2024-001', 150, 10, 20, '2024-01-15', '2026-01-15'),
(2, 'BATCH-2024-002', 200, 10, 20, '2024-02-01', '2026-02-01'),
(3, 'BATCH-2024-003', 75, 10, 20, '2024-01-20', '2026-01-20'),
(4, 'BATCH-2024-004', 100, 10, 20, '2024-02-10', '2026-02-10');

-- Product ingredients
INSERT INTO product_ingredients (product_id, ingredient_id, quantity) VALUES
(1, 1, '500mg'), (1, 2, '100mg'), (2, 3, '1000mg'), (3, 4, '500mg'), (4, 1, '400mg');

-- Product categories
INSERT INTO product_categories (product_id, category_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4);