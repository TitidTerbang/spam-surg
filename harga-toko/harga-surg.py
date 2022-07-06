totalpack = int(input("total pack? "))
ratepack = input("rate? ")

#tools
antibio = (totalpack * 5) / 14
antisep = (totalpack * 5) / 17
clamp = (totalpack * 5) / 17
defi = (totalpack * 5) / 17
labkit = (totalpack * 5) / 17
pins = (totalpack * 5) / 17
scap = (totalpack * 5) / 14
splin = (totalpack * 5) / 17
sponge = (totalpack * 5) / 14
trans = (totalpack * 5) / 17
ultra = (totalpack * 5) / 17
anestetik = (totalpack * 5) / 16

hasiltools = antibio + antisep + clamp + defi + labkit + pins + scap + splin + sponge + trans + ultra + anestetik
print('hasil dari tools adalah ' + str(int(hasiltools)) + ' wl (stitches dihitung terpisah)')

#supplies
train = totalpack / 5
hbed = totalpack / 20
hmon = totalpack / 2.1
med = (totalpack * 10) / 18

hasilsup = train + hbed + hmon + med
print('hasil dari supplies adalah ' + str(int(hasilsup)) + ' wl')

#stit
hasilstit = (totalpack * 5) / (200/105)
print('hasil stit adalah ' + str(int(hasilstit)) + ' wl')

hasil = hasiltools + hasilstit + hasilsup
modal = totalpack * float(ratepack)
#total keuntungan/kerugian
if hasil > modal:
    untung = hasil - modal
    print('modal = ' + str(int(modal)) + ' wl')
    print('untung sekitar ' + str(int(untung)) + ' wl')
elif modal > hasil:
    rugi = modal - hasil
    print('modal = ' + str(int(modal)) + ' wl')
    print('rugi sekitar -' + str(int(rugi)) + ' wl')