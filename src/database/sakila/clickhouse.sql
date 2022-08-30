CREATE DATABASE IF NOT EXISTS db_dw ;

CREATE DATABASE IF NOT EXISTS db2 ;

CREATE TABLE IF NOT EXISTS db_dw.dim_tahun (
	id_tahun Int32,
	tahun Int32
) ENGINE = MergeTree()
ORDER BY id_tahun;

--
CREATE TABLE IF NOT EXISTS db_dw.dim_lokasi (
	id_lokasi Int32,
	id_negara Int32,
	negara String,
	id_kota Int32,
	kota String
) ENGINE = MergeTree()
ORDER BY id_lokasi;

create table IF NOT EXISTS db_dw.fakta_pelanggan (
id_tahun Int32,
id_lokasi Int32,
jml_pelanggan Int32
) engine = MergeTree
order by (id_tahun, id_lokasi);
--
create table IF NOT EXISTS db2.rekap_pelanggan (
tahun Int32,
negara String,
kota String,
id_negara Int32,
id_kota Int32,
jml_pelanggan Int32
) engine = MergeTree
order by (tahun);