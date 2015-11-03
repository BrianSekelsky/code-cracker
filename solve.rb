c1 = '6F763F348D53736B50AF21AAD55D0BD4D2A80968DF1799EDEB7C819200F8105861640659BB0DD754586DA0CF5D4BDB03339A88D17E11A23295A617060B12DEBF0F07F122741610414C36'
c2 = '713F322F9D4D712E4FAA6DA6C81E1D9B86A9022ED91688E9FB29849E58B059492E61041CB84D9241436DA0E5465F854828DFDFCD6A14A2328FAB130C0C55DBF6141DA26D75035B000000'
c3 = '722F2E329751370742A823A6C84A0B8686B20929DF0D99E8BF7C83D74DB61D1E32611309BB04D6154361F3965C5B874B3E8888CA7E0AA23280AD17060D0696EB0F0BA2647A0510010000'
c4 = '62397C22974A373E4DA228BDC84A0F9AC2FF4C0CD34585E3EA36D3A344BD595C2E745215A40ED9504F28E1C5124A9F4C2E98C082771DE66580BD450E111CD8F8471AED2278140C010000'
c5 = '62397C22974A37204DA93AEFCC560B86C3E02568D10C9BE4EB29959E42BC5953382D100BA415DA505937A0F4405B96483291CF827919B566C1B90C1D1655C2F7024EF3777E031B010000'
c6 = '67763F34945B3B6B40AE28AAC9520B87D5E0012DDD09DCE4FE6DD39549BD171E2D6C1B1DEB0EC7410B61EE96465692033690DACC7616A13293A10A045E1AD0BF1306E7225C13105C1860'
c7 = '6C3735369D1F642A57E62CBB9B4A0F96CAA54C3FD51194ACDC6C818449B1595F2F69520DA30492564361ECD2405B990F7B8BC9CE7411A875C1A70B49121AC1B34706F7717303110F1A2F'
c8 = '6F257C09975D723957E63EBBD25202D4C7A2092C8345A8F5ED609C990CB90A5524695218B841DA500B7BE5D7465B93033396C5D17A14A03EC1BB0B001003DFEB020AAE227A12555B0425'
c9 = '76332E33994F646703AF2BEFD35B4E83C7AB093B904594E9BF7E9A9B40F81B5B616C1015AE41C65A0B6DE1C2124C924237DFCECD701CEA3283BB1149161096E80E02EE227503034A1E60'
c10 = '713E3D2FD85E752456B26DB6D44B51D4E1AF083B904598E3F12E87D758BD155261601759B20EC7154A7AE596414A965A3291CF82771DB477DEEE31100C1CD9F1471DEA706E01124A086E'
c11 = '643332319D51371857A73FA49B571DD4D4A5183DCE0B95E2F82987980CAC115B61431B1EA31595460B5FE1C25156D754328BC0827711B53283BC0A1D1610C4B8144EE0636812145D086E'

def hex_to_binary(ct)
   
     new_str = ""

     ct.each_char { |i| 
    	if i == '0'
	    i = '0000'
	elsif i == '1'
    	    i = '0001'
        elsif i == '2'
    	    i = '0010'
	elsif i == '3'
    	    i = '0011'
	elsif i == '4'
    	    i = '0100'
	elsif i == '5'
    	    i = '0101'
	elsif i == '6'
            i = '0110'	    
	elsif i == '7'
    	    i = '0111'
	elsif i == '8'
    	    i = '1000'
	elsif i == '9'
    	    i = '1001'
	elsif i == 'A'
    	    i = '1010'
	elsif i == 'B'
    	    i = '1011'
	elsif i == 'C'
    	    i = '1100'
	elsif i == 'D'
    	    i = '1101'
	elsif i == 'E'
    	    i = '1110'
	elsif i == 'F'
    	    i = '1111'
    	end

	new_str << i
     } 

     return new_str

end

def xor(ct1, ct2)

    new_str = ""

    ct1.each_char.with_index{ |val, i|
	
	if val == ct2[i].chr
	    new_str << '0'
	elsif val != ct2[i].chr
	    new_str << '1'
	end    
    }

    return new_str

end

def to_ascii(binary_str)
    binary_str.gsub(/\s/,'').gsub(/([01]{8})/) { |b| b.to_i(2).chr }
end


#Solve It
all_after_xor =  [xor(hex_to_binary(c1), hex_to_binary(c11)),
xor(hex_to_binary(c2), hex_to_binary(c11)),
xor(hex_to_binary(c3), hex_to_binary(c11)),
xor(hex_to_binary(c4), hex_to_binary(c11)),
xor(hex_to_binary(c5), hex_to_binary(c11)),
xor(hex_to_binary(c6), hex_to_binary(c11)),
xor(hex_to_binary(c7), hex_to_binary(c11)),
xor(hex_to_binary(c8), hex_to_binary(c11)),
xor(hex_to_binary(c9), hex_to_binary(c11)),
xor(hex_to_binary(c10), hex_to_binary(c11)),
]

puts all_after_xor[1]

puts "Enter Test: "
test = gets

test = unpack(test)

puts test

###################################
f0 = ""
f0 = xor(all_after_xor[0], test)
f1 = ""
f1 = xor(all_after_xor[1], test)
f2 = ""
f2 = xor(all_after_xor[2], test)
f3 = ""
f3 = xor(all_after_xor[3], test)
f4 = ""
f4 = xor(all_after_xor[4], test)
f5 = ""
f5 = xor(all_after_xor[5], test)
f6 = ""
f6 = xor(all_after_xor[6], test)
f7 = ""
f7 = xor(all_after_xor[7], test)
f8 = ""
f8 = xor(all_after_xor[8], test)
f9 = ""
f9 = xor(all_after_xor[9], test)
##################################

puts to_ascii(f0)
puts to_ascii(f1)
puts to_ascii(f2)
puts to_ascii(f3)
puts to_ascii(f4)
puts to_ascii(f5)
puts to_ascii(f6)
puts to_ascii(f7)
puts to_ascii(f8)
puts to_ascii(f9)
