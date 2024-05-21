# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"42262","system":"readv2"},{"code":"104853","system":"readv2"},{"code":"37086","system":"readv2"},{"code":"7203","system":"readv2"},{"code":"101881","system":"readv2"},{"code":"2746","system":"readv2"},{"code":"96455","system":"readv2"},{"code":"52227","system":"readv2"},{"code":"99165","system":"readv2"},{"code":"32467","system":"readv2"},{"code":"68386","system":"readv2"},{"code":"50679","system":"readv2"},{"code":"29387","system":"readv2"},{"code":"99504","system":"readv2"},{"code":"98935","system":"readv2"},{"code":"72411","system":"readv2"},{"code":"38000","system":"readv2"},{"code":"20607","system":"readv2"},{"code":"65144","system":"readv2"},{"code":"23742","system":"readv2"},{"code":"110179","system":"readv2"},{"code":"54513","system":"readv2"},{"code":"104666","system":"readv2"},{"code":"63045","system":"readv2"},{"code":"33016","system":"readv2"},{"code":"98226","system":"readv2"},{"code":"60401","system":"readv2"},{"code":"67594","system":"readv2"},{"code":"91521","system":"readv2"},{"code":"100999","system":"readv2"},{"code":"40451","system":"readv2"},{"code":"105493","system":"readv2"},{"code":"63928","system":"readv2"},{"code":"100108","system":"readv2"},{"code":"62657","system":"readv2"},{"code":"9645","system":"readv2"},{"code":"67872","system":"readv2"},{"code":"25168","system":"readv2"},{"code":"1990","system":"readv2"},{"code":"101051","system":"readv2"},{"code":"10388","system":"readv2"},{"code":"69998","system":"readv2"},{"code":"71319","system":"readv2"},{"code":"51274","system":"readv2"},{"code":"47956","system":"readv2"},{"code":"37893","system":"readv2"},{"code":"3852","system":"readv2"},{"code":"33447","system":"readv2"},{"code":"6661","system":"readv2"},{"code":"55436","system":"readv2"},{"code":"104087","system":"readv2"},{"code":"32044","system":"readv2"},{"code":"55846","system":"readv2"},{"code":"52630","system":"readv2"},{"code":"105206","system":"readv2"},{"code":"100755","system":"readv2"},{"code":"73508","system":"readv2"},{"code":"33014","system":"readv2"},{"code":"104077","system":"readv2"},{"code":"20256","system":"readv2"},{"code":"99166","system":"readv2"},{"code":"54962","system":"readv2"},{"code":"3851","system":"readv2"},{"code":"68391","system":"readv2"},{"code":"6020","system":"readv2"},{"code":"98637","system":"readv2"},{"code":"90766","system":"readv2"},{"code":"38717","system":"readv2"},{"code":"3976","system":"readv2"},{"code":"55108","system":"readv2"},{"code":"67126","system":"readv2"},{"code":"32905","system":"readv2"},{"code":"99191","system":"readv2"},{"code":"55844","system":"readv2"},{"code":"44954","system":"readv2"},{"code":"8367","system":"readv2"},{"code":"3268","system":"readv2"},{"code":"25831","system":"readv2"},{"code":"25547","system":"readv2"},{"code":"67765","system":"readv2"},{"code":"6768","system":"readv2"},{"code":"60043","system":"readv2"},{"code":"18819","system":"readv2"},{"code":"15269","system":"readv2"},{"code":"103907","system":"readv2"},{"code":"1444","system":"readv2"},{"code":"510","system":"readv2"},{"code":"10868","system":"readv2"},{"code":"73224","system":"readv2"},{"code":"107912","system":"readv2"},{"code":"66731","system":"readv2"},{"code":"98672","system":"readv2"},{"code":"105795","system":"readv2"},{"code":"105665","system":"readv2"},{"code":"106329","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('visual-impairment-and-blindness-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["blindness---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["blindness---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["blindness---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
