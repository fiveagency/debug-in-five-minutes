package com.five.debug

class ResultChecker {

    fun getInputOne(): Array<String> = arrayOf(
        "Debug in Five minutes",
        "Hopefully this is not so hard",
        "What an easy task, right"
    )

    fun checkResultOne(result: Array<Int>?): Boolean = arrayOf(4, 6, 5).contentEquals(result)

    fun getInputTwo(): Array<Pair<Array<Int>, Int>> = arrayOf(
        Pair(arrayOf(5, 3, 15, 22, 4), 10),
        Pair(arrayOf(1, 2, 3, 4, 5), 8),
        Pair(arrayOf(4, 3, 3, 3, 2, 2, 2), 4),
        Pair(arrayOf(), 5),
    )

    fun checkResultTwo(result: Array<Boolean>?): Boolean = arrayOf(true, false, true, false).contentEquals(result)

    fun getInputThree(): Array<String> = arrayOf(
        "Donald Trump",
        "Rosie O'Donnel",
        "Seymour Butts"
    )

    fun checkResultThree(result: Array<String>?): Boolean = arrayOf(
        "Tonald Drump",
        "Oosie R'Donnel",
        "Beymour Sutts"
    ).contentEquals(result)

    fun getInputFour(): Array<Array<Int>> = arrayOf(
        arrayOf(147, 33, 526),
        arrayOf(33, 72, 74),
        arrayOf(1, 5, 9),
    )

    fun checkResultFour(result: Array<Int>?): Boolean = arrayOf(493, 41, 8).contentEquals(result)

    fun getInputFive(): Array<String> = arrayOf(
        "Celebration",
        "Palm",
        "Prediction",
        ""
    )

    fun checkResultFive(result: Array<Int>?): Boolean = arrayOf(5, 1, 4, 0).contentEquals(result)
}