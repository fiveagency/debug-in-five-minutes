package com.five.debug

class BugResolver {

    private val resultChecker: ResultChecker = ResultChecker()

    /*
     * Create an array of integers where each integer represent word count in given sentences:
     *
     * Example:
     * - Input: ["Example sentence", "Another example sentence"]
     * - Result: [2, 3]
     */
    fun fixBugOne(): Boolean {
        val input: Array<String> = resultChecker.getInputOne()

        // Write code here...

        return resultChecker.checkResultOne(null)
    }

    /*
     * Check if in given arrays there exists at least one number that is larger than or equal to n.
     *
     * Example:
     * - Input: [
     *      ([5, 3], 10),
     *      ([5, 3], 2)
     *   ]
     * - Result: [true, false]
     */
    fun fixBugTwo(): Boolean {
        val input: Array<Pair<Array<Int>, Int>> = resultChecker.getInputTwo()

        // Write code here...

        return resultChecker.checkResultTwo(null)
    }

    /*
     * Shuffle first letters on person's first and last name. Input will be array of names.
     *
     * Example:
     * - Input: ["Debug Conference"]
     * - Result: ["Cebug Donference"]
     */
    fun fixBugThree(): Boolean {
        val input: Array<String> = resultChecker.getInputThree()

        // Write code here...

        return resultChecker.checkResultThree(null)
    }

    /*
     * In each array of integers, find difference between largets and minimum number.
     *
     * Example:
     * - Input: [[1, 2, 5], [5, 10, 15]]
     * - Result: [4, 10]
     */
    fun fixBugFour(): Boolean {
        val input: Array<Array<Int>> = resultChecker.getInputFour()

        // Write code here...

        return resultChecker.checkResultFour(null)
    }

    /*
     * For each string in array, find the number (count) of vowels contained within it.
     *
     * Example:
     * - Input: ["Hello", "Bye"]
     * - Result: [2, 1]
     */
    fun fixBugFive(): Boolean {
        val input: Array<String> = resultChecker.getInputFive()

        // Write code here...

        return resultChecker.checkResultFive(null)
    }
}