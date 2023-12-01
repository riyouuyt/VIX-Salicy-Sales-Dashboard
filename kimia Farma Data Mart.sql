-- Table Base

CREATE TABLE table_base AS
SELECT
    CONCAT(pjl.id_invoice, '_', pjl.id_barang) AS id_penjualan,
    pjl.id_invoice,
    pjl.tanggal,
    pjl.id_barang,
    brg.nama_barang,
    pjl.harga,
    pjl.unit,
    pjl.jumlah_barang,
    (pjl.jumlah_barang * pjl.harga) AS total_harga_per_barang,
    pjl.mata_uang,
    brg.kode_brand,
    brg.brand,
    pjl.id_customer,
    plg.nama AS nama_customer,
    plg.cabang_sales,
    plg.id_distributor,
    plg.group_cabang AS group_category
FROM
    penjualan_data pjl
LEFT JOIN
    barang_data brg ON pjl.id_barang = brg.kode_barang
LEFT JOIN
    pelanggan_data plg ON pjl.id_customer = plg.id_customer;

-- Table Aggregrate

SELECT
    id_invoice, 
	tanggal AS sales_date,
	id_customer, 
	nama_customer,
	cabang_sales,
	id_distributor, 
	group_category, 
	COUNT(DISTINCT id_barang) AS total_product,
    SUM(total_harga_per_barang) AS total_price_each_product
FROM
    table_base 
GROUP BY
    1, 2, 3, 4 , 5, 6, 7
ORDER BY
	1
;