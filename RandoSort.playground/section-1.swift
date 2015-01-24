let arrayOfRandos = [3, 2, 5, 4, 1]

// naive
let sortedRandos = arrayOfRandos.sorted { $0 < $1 }
println(sortedRandos)

// imperative/looped
func sortLoopRando(randos: [Int]) -> [Int] {
    if (randos.count == 1 || randos.isEmpty) {
        return randos
    }
    
    var loopedRandos: [Int] = randos
    var swapped: Bool = true
    while swapped {
        swapped = false
        for i in 0..<loopedRandos.count-1 {
            var left = loopedRandos[i]
            var right = loopedRandos[i+1]
            if left > right {
                loopedRandos[i] = right
                loopedRandos[i+1] = left
                swapped = true
            }
        }
    }
    
    return loopedRandos
}

sortLoopRando(arrayOfRandos)

