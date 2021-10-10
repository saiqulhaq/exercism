internal fun twofer(name: String = ""): String {
    if (name.isNullOrBlank()) {
        return "One for you, one for me."

    }

    return "One for $name, one for me."
}
