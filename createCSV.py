import csv
import sys


def inputData(filename):
    with open(filename, 'a') as file:
        cols = input("Column Variables (comma separated): ")
        cols = cols.split(',')
        cols = [i.strip() for i in cols]

        writer = csv.DictWriter(file, fieldnames=cols)

        while True:
            try:
                row = {}
                for col in cols:
                    variable = input(f"{col}: ")
                    row[col] = variable
                writer.writeheader()
                writer.writerow(row)
            except EOFError:
                break



def main():
    if len(sys.argv) == 1:
        print("Usage: python3 createCSV.py <fileName>")
    else:
        inputData(sys.argv[1])

if __name__ == "__main__":
    main()