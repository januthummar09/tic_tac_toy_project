void stepFour(List<List<int>> data) {
  if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][1] = 1;

    ///  index 0 element 1
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    data[2][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1 || data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    data[0][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1 || data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1) {
    data[2][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 0 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1) {
    data[2][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1) {
    data[2][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0) {
    data[2][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0) {
    data[2][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1) {
    data[2][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[0][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    data[2][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    data[2][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 0 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[2][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    data[2][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    data[2][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1 || data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    data[0][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0) {
    data[2][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0 || data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][1] = 1;

    ///index 0 element 2
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0 ||
      data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[0][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1 || data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    data[2][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == 0 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 0 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1) {
    data[2][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 0 && data[2][1] == 1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1 || data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 0 && data[2][1] == 1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1) {
    data[2][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[0][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    data[2][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[0][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    data[2][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    data[2][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0 || data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 0 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1) {
    data[2][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 0 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 1) {
    data[2][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 0 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 1) {
    data[0][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    data[0][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[2][0] = 1;

    /// index 0 element 3
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 0 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1 || data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    data[2][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 0 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[2][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    data[2][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    data[2][1] = 1;

    ///user win
  } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0 || data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[2][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[2][2] = 1;

    /// index 6
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1) {
    data[2][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1) {
    data[1][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1) {
    data[2][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1) {
    data[1][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    data[2][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    data[1][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1 || data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    data[2][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    data[1][1] = 1;

    ///index 7
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    data[2][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    data[2][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1) {
    data[2][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1) {
    data[1][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][1] = 1;

    ///index 8
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    data[2][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    data[2][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[2][0] = 1;

    ///index 0 element 4
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == 0 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1) {
    data[2][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    data[2][0] = 1;

    /// i -5
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[0][1] = 1;

    /// i- 6
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1 || data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[2][1] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    data[1][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    data[0][2] = 1;

    /// i-7
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0) {
    data[2][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1) {
    data[1][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    data[1][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 1 && data[2][2] == 0 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 1 && data[2][2] == 0 ||
      data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 1 && data[2][2] == 0) {
    /// i -8
    data[1][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 1 && data[2][2] == 0) {
    data[2][0] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 1 && data[2][2] == 0 || data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 1 && data[2][2] == 0) {
    data[0][2] = 1;
  } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0) {
    data[0][1] = 1;
  }
}
