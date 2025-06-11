-- Menambahkan Data Pelanggan
INSERT INTO Customers (name, phone_number, address, email)
VALUES 
('wanti', '08123456789', 'Jl. Merdeka No. 10', 'wanti@gamil.com'),
('mona', '08987654321', 'Jl. Pahlawan No. 5', 'mona.com');

-- Menambahkan Data Supplier
INSERT INTO Suppliers (company_name, contact_person, phone_number, address)
VALUES 
('PT Kosmetik A', 'isda', '0811223344', 'Jl. Industri No. 1'),
('CV Beauty B', 'nepa', '0855667788', 'Jl. Pabrik No. 2');

-- Menambahkan Data Produk
INSERT INTO Products (name, price, stock, category, supplier_id)
VALUES 
('Lipstick Matte', 50000, 100, 'Makeup', 1),
('Foundation', 150000, 50, 'Skincare', 1),
('Eyeshadow Palette', 200000, 20, 'Makeup', 2);

-- Menambahkan Data Transaksi Penjualan
INSERT INTO Sales (customer_id, sale_date, total_amount)
VALUES 
(1, '2023-10-01', 200000),
(2, '2023-10-02', 150000);

-- Menambahkan Data Detail Transaksi
INSERT INTO SaleDetails (sale_id, product_id, quantity, subtotal)
VALUES 
(1, 1, 2, 100000), -- Lipstick Matte
(1, 2, 1, 150000), -- Foundation
(2, 3, 1, 200000); -- Eyeshadow Palette

-- Menambahkan Data Inventaris
INSERT INTO Inventory (product_id, quantity)
VALUES 
(1, 98), -- Stok Lipstick Matte tersisa 98 setelah penjualan
(2, 49), -- Stok Foundation tersisa 49 setelah penjualan
(3, 19); -- Stok Eyeshadow Palette tersisa 19 setelah penjualan