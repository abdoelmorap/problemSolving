void main() {
  List<String> arrA = [ "(1,1,1)","(0,1,1)", "(1,1,1)"];
  List<String> arrB = ["(0,1,0,1)", "(1,1,1,1)", "(0,1,0,1)", "(1,1,1,1)"];
  countSwaps(arrA);
  countSwaps(arrB);
}

void countSwaps(List<String> arr) {
  print(genrateArray( arr));
  var matrix=genrateArray( arr);
  var swapCount=0;
  // analyzing the matrix to assure no border has a 0
	for (int row = 0; row < matrix.length; row++)
	{
		for (int col = 0; col < matrix[row].length; col++)
		{
			// condition to check the borders only
			if (row == 0 || row == matrix.length - 1 || col == 0 || col == matrix[row].length-1)
			{
				if (matrix[row][col] == '0')
				{
					// column needs to be swapped
					if (col == 0 || col == matrix[row].length - 1)
					{
					matrix=	swapColumn(matrix, col);
            
						swapCount++;
					}
					// row needs to be swapped
					else if (row == 0 || row == matrix.length-1)
					{
					matrix=	swapRow(matrix, row);
						swapCount++;
					}
				}
			}
		}
	}
    print(swapCount);

// 	return swapCount;
}

// method to swap 2 columns
  swapColumn( matrix, int col)
{
	// traverse to find a column that we can swap with
	for (int y = 0; y < matrix[0].length; y++)
	{
		// ignore same column or border columns
		if (y == col || y == 0 || y == matrix[0].length-1)
		{
			continue;
		}
		else
		{
			bool valid = true;

			// analyze current column to check if is valid for swapping
			for (int row = 0; row < matrix.length; row++)
			{
				if (matrix[row][y] == '0')
				{
					valid = false;
					break;
				}
			}

			// preform the swap between the 2 columns
			if (valid)
			{
				String temp;

				for (int x = 0; x < matrix.length; x++)
				{
					temp = matrix[x][col];
					matrix[x][col] = matrix[x][y];
					matrix[x][y] = temp;
				}

				return matrix;
			}
		}
	}
}

// method to swap 2 rows
  swapRow( matrix, int row)
{
	// traverse to find a row that we can swap with
	for (int x = 0; x < matrix.length; x++)
	{
		// ignore the same row, or any border rows
		if (x == row || x== 0 || x == matrix.length-1)
		{
			continue;
		}
		else
		{
			bool valid = true;

			// analyze current row to check if is valid for swapping
			for (int col = 0; col < matrix[x].length; col++)
			{
				if (matrix[x][col] == '0')
				{
					valid = false;
					break;
				}
			}

			// preform the swap between the 2 rows
			if (valid)
			{
				String temp;

				for (int y = 0; y < matrix.length; y++)
				{
					temp = matrix[row][y];
					matrix[row][y] = matrix[x][y];
					matrix[x][y] = temp;
				}

				return matrix;
			}
		}
	}
}
List<List<String>> genrateArray(List<String> arr) {
  List<List<String>> finalarray = [];
  for (var xx in arr) {
    List<String> searchKeywords =
        List<String>.generate(xx.length, (index) => xx[index]);
          List<String> temp = [];

    for (String y in searchKeywords) {

      if (y == '0' || y == '1') {
        temp.add(y);
      }
    }
    finalarray.add(temp);
  }

  return finalarray;
}



