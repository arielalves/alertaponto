require './connection.rb'

# res = $pgconn.exec('select cd_num, dt_data, dt_hora from tb_ponto_dados_relogio limit 50')
# res.each do |row|
# 	puts row['cd_num'] + ' | ' + row['dt_data'] + ' | ' + row['dt_hora']
# end


res = $oraconn.exec('select cd_num, dt_data, dt_hora from tb_ponto_dados_relogio').to_s
res.each do |row|
	puts row['cd_num'] + ' | ' + row['dt_data'] + ' | ' + row['dt_hora']
end




# statement = 'select cd_num, dt_data, dt_hora from tb_ponto_dados_relogio where rownum <= 10'
# cursor = $oraconn.parse(statement)
# cursor.exec
# cursor.each do |row|
# 	printf row
# end
#cursor.fetch() {|row|
	#puts row
#}