-- Produk Terlaris
SELECT p.name AS product_name, SUM(sd.quantity) AS total_sold
FROM SaleDetails sd
JOIN Products p ON sd.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC;

-- Stok Produk yang Menipis
SELECT p.name AS product_name, i.quantity AS remaining_stock
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id
WHERE i.quantity < 20;

-- Total Penjualan Harian
SELECT s.sale_date, SUM(s.total_amount) AS total_sales
FROM Sales s
GROUP BY s.sale_date
ORDER BY s.sale_date;

-- Daftar Pelanggan dengan Total Belanja Terbanyak
SELECT c.name AS customer_name, SUM(s.total_amount) AS total_spent
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;