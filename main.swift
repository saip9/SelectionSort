// Add your code below

var words = [String]()

while let userOutput = readLine() {
    words.append(userOutput)
}


func selectionSort(_ array: [String]) -> [String] {

    var swap = array

    for firstWord in 1..<swap.count {
        var leastWord = firstWord

        for secondWord in firstWord + 1 ..< swap.count {
            if swap[secondWord] < swap[leastWord] {
                leastWord = secondWord
            }
        }

        if firstWord != leastWord {
            swap.swapAt(firstWord, leastWord)
        }

    }
    return swap
}
print(selectionSort(words))
       

