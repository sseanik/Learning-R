import csv
import sys


def inputData(filename):
    with open(filename, 'a') as file:
        rows = input("Row Variables (comma separated): ")
        rows = rows.split(',')
        rows = [i.strip() for i in rows]

        writer = csv.DictWriter(file, fieldnames=rows)

        while True:
            try:
                newRow = {}
                for row in rows:
                    variable = input(f"{row}: ")
                    newRow[row] = variable
                writer.writeheader()
                writer.writerow(newRow)
            except EOFError:
                break



def main():
    if len(sys.argv) == 1:
        print("Usage: python3 createCSV.py <fileName>")
    else:
        inputData(sys.argv[1])

if __name__ == "__main__":
    main()