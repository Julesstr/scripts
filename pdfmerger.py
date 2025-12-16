from pypdf import PdfWriter
import sys
def main(first_image, second_image, output_image = "output.pdf"):
    merger = PdfWriter()

    with(
        open(f"{first_image}", "rb") as input1, 
        open(f"{second_image}", "rb") as input2 
    ):
        merger.append(fileobj=input1)
        merger.append(fileobj=input2)

        merger.write(f"{output_image}")
    
if __name__ == "__main__":

    main(sys.argv[1], sys.argv[2])
