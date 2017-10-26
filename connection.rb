require 'pg'
require 'oci8'

$pgconn = PG.connect("172.26.25.45", 5432, '', '', "issec", "assist", "master2")

$oraconn = OCI8.new('assist','master3','//172.26.25.46:1521/ISSEC.world')

