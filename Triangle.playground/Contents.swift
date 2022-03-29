import UIKit



func createTriangle(numRows: Int){
    var results = [[Int]]()
    
    if (numRows == 0) {
        return
    }

    for i in 0..<numRows {
        var currentResults = [Int]()

                for _ in 0..<(numRows - i - 1) {
            print(" ", terminator:"")
        }

       
        for j in 0...i {
            if (i > 1 && j > 0 && j < i) {
                let value = results[i-1][j] + results[i-1][j-1]
                currentResults.append(value)

                print("\(value) ", terminator: "")
            } else {
                currentResults.append(1)
                print("\(1) ", terminator: "")
            }
        }
        
        results.append(currentResults)
        print("\n")
    }
}
createTriangle(numRows: 4)



