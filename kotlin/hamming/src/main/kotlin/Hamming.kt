object Hamming {

    @Throws(IllegalArgumentException::class)
    fun compute(leftStrand: String, rightStrand: String): Int  {
        if (leftStrand == "" && rightStrand == "") {
            return 0
        }
        if (leftStrand == rightStrand) {
            return 0
        }

        if (leftStrand.length != rightStrand.length){
            throw IllegalArgumentException("left and right strands must be of equal length")
        }

        var mismatch_count = 0
        var index = 0
        while (index < leftStrand.length) {
           if (leftStrand[index] != rightStrand[index]) {
               mismatch_count++
           }
            index++
        }
        return mismatch_count
    }
}
