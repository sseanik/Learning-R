import csv
import sys

with open('studentMarks.csv', 'r') as file:
    reader = csv.reader(file)
    for row in reader:
        print(row)

def main():
    if len(sys.argv) == 1:
        print("Usage: python3 cr")
    pass

if __name__ == "__main__":
    main()