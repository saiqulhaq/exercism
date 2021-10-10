import java.time.LocalDateTime
import java.time.LocalDate

class Gigasecond {

    constructor(time: LocalDateTime) {
        this.date = time.plusSeconds(1000000000)
    }

    constructor(date: LocalDate) {
        this.date = date.atStartOfDay().plusSeconds(1000000000)
    }

    val date: LocalDateTime
}
