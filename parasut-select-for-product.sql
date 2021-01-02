//Paraşüt'e Ürün Yüklemek için Query. Kolay excel çıktısı ile paraşüte ürün aktarımı

select 
 productName, productCode, barcode, kdv_id, "E" as kdv_dahil, "0" as alis_fiyati, "TRL" as alis_doviz,  
 round(price2 + price2*kdv_id/100, 2) as price, price2, currencyType, "Adet" as birim, "" as Kategori,  quantity, "2" as kritik_stok
from product where productName like '%any-keyword%'
