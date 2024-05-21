# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"SJ0z.11","system":"readv2"},{"code":"8HlE.00","system":"readv2"},{"code":"F4H7300","system":"readv2"},{"code":"F49z000","system":"readv2"},{"code":"F490z00","system":"readv2"},{"code":"F494.00","system":"readv2"},{"code":"9NlD.00","system":"readv2"},{"code":"F490.00","system":"readv2"},{"code":"ZRhO.00","system":"readv2"},{"code":"FyuL.00","system":"readv2"},{"code":"F49z.00","system":"readv2"},{"code":"H54","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('visual-impairment-and-blindness-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["visual-impairment-and-blindness---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["visual-impairment-and-blindness---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["visual-impairment-and-blindness---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
