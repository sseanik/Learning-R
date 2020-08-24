import csv
import sys

def createRGraph():
    pass

def createCSV():
    nameOfCSV = input("Name of CSV file (without .csv extension): ")
    with open(nameOfCSV + '.csv', 'a') as file:
        return file

def main():
    CSVFile = createCSV()
    createRGraph(CSVFile)

if __name__ == "__main__":
    main()