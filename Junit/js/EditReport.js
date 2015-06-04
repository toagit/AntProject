function cutScript(path) {
  importPackage(java.io);

  java.lang.System.out.println(path);
  readFile = new File(path);
  br = new BufferedReader(InputStreamReader(new FileInputStream(readFile), "UTF-8"));
  outFilePath = readFile.getAbsolutePath() + ".repraced";
  pw = new PrintWriter(new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFilePath), "UTF-8")));

  var line;
  var isOut = true;
  while ((line = br.readLine()) != null) {
    if (line.contains("script type")) {
      isOut = false;
    } else if (line.contains("/script")) {
      isOut = true;
    }
    if (isOut) {
      pw.println(line);
    }
  }
  pw.close();
  br.close();
  return outFilePath;
}
