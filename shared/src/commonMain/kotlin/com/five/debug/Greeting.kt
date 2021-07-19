package com.five.debug

class Greeting {
    fun greeting(): String {
        return "Hello, ${Platform().platform}!"
    }
}