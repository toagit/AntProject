function convert(before) {
  java.lang.System.out.println(before);
  var after = "";

  if (before.contain("aaa")) {
    after = "あああ";
  } else if (before.contain("bbb")) {
    after = "いいい";
  } else {
    after = "";
  }
  return after;
}

function getJpNamePrefix(before) {
  var after = convert(before);
  if (after.equals("")) {
    after = after + "_";
  }
  return after;
}

function getJpNameSuffix(before) {
  var after = convert(before);
  if (after.equals("")) {
    after = "_" + after;
  }
  return after;
}
