
import scala.concurrent.duration._

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.jdbc.Predef._

class RecordedSimulation extends Simulation {

	val httpProtocol = http
		.baseUrl("http://computer-database.gatling.io")
		.inferHtmlResources()
		.acceptHeader("text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8")
		.acceptEncodingHeader("gzip, deflate")
		.acceptLanguageHeader("en-US,en;q=0.5")
		.userAgentHeader("Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:62.0) Gecko/20100101 Firefox/62.0")

	val headers_0 = Map(
		"Accept" -> "*/*",
		"Pragma" -> "no-cache")

	val headers_3 = Map("Upgrade-Insecure-Requests" -> "1")

	val headers_5 = Map("Accept" -> "text/css,*/*;q=0.1")

    val uri2 = "http://detectportal.firefox.com/success.txt"

	val scn = scenario("RecordedSimulation")
		.exec(http("request_0")
			.get(uri2 + "")
			.headers(headers_0)
			.resources(http("request_1")
			.get(uri2 + "")
			.headers(headers_0)))
		.pause(1)
		.exec(http("request_2")
			.get(uri2 + "")
			.headers(headers_0)
			.resources(http("request_3")
			.get("/computers")
			.headers(headers_3),
            http("request_4")
			.get(uri2 + "")
			.headers(headers_0),
            http("request_5")
			.get("/assets/stylesheets/bootstrap.min.css")
			.headers(headers_5),
            http("request_6")
			.get("/assets/stylesheets/main.css")
			.headers(headers_5)))
		.pause(4)
		.exec(http("request_7")
			.get(uri2 + "")
			.headers(headers_0))
		.pause(27)
		// browse
		.exec(http("request_8")
			.get("/computers?f=Macbook")
			.headers(headers_3))
		.pause(1)
		.exec(http("request_9")
			.get("/computers/89")
			.headers(headers_3))
		.pause(2)
		.exec(http("request_10")
			.get("/computers")
			.headers(headers_3))
		.pause(13)
		// edit
		.exec(http("request_11")
			.get("/computers/new")
			.headers(headers_3))
		.pause(11)
		.exec(http("request_12")
			.post("/computers")
			.headers(headers_3)
			.formParam("name", "HP")
			.formParam("introduced", "2009-09-23")
			.formParam("discontinued", "")
			.formParam("company", "27"))
		.pause(10)
		.exec(http("request_13")
			.get("/computers?p=1")
			.headers(headers_3))
		.pause(1)
		.exec(http("request_14")
			.get("/computers?p=2")
			.headers(headers_3)
			.resources(http("request_15")
			.get("/computers?p=3")
			.headers(headers_3)))
		.pause(1)
		.exec(http("request_16")
			.get("/computers?p=4")
			.headers(headers_3)
			.resources(http("request_17")
			.get("/computers?p=5")
			.headers(headers_3)))

	setUp(scn.inject(atOnceUsers(1))).protocols(httpProtocol)
}