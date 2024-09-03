import csv

input = 'accessions.txt'
output = 'accessions.csv'

with open(input, 'r') as file:
    lines = file.readlines()

data = [line.strip().strip('"') for line in lines]

with open(output, 'w', newline='') as file:
    writer = csv.writer(file)
    for accession in data:
        writer.writerow([accession])

print(f"Success! written to {output}")
