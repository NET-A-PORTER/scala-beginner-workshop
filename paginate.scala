val X_OFFSET = 1500

val lines = scala.io.Source.fromFile("index.html").getLines.toSeq
val numOfSlides = lines.count(_ contains "data-x=")

var xValue = -X_OFFSET

val newLines = lines map { line => 
	if(line contains "data-x=") {
		xValue += X_OFFSET
		line.replaceAll("""data-x="[-0-9]+"""", s"""data-x="${xValue}"""")
	} else {
		line
	}
}

val p = new java.io.PrintWriter(new java.io.File("index.html"))
newLines.foreach(p.println)
p.close()