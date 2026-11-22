void main() {
  print('--- 1) getMin ---');
  print(getMin([8, 0, 1, 5]));

  print('\n--- 2) getSecondSmallest ---');
  print(getSecondSmallest([1, 9, 0, 5, 4, 2]));

  print('\n--- 3) containsValue ---');
  containsValue([8, 0, 1, 5], 1);

  print('\n--- 4) CalculateEven ---');
  print(CalculateEven([1, 4, 2, 5, -1, 8]));

  print('\n--- 5) assignGrades ---');
  assignGrades([40, 55, 70, 58]);

  print('\n--- 6) analyzeScores ---');
  analyzeScores([8, 5, 1, 3]);

  print('\n--- 7) reverseArray ---');
  reverseArray([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  print('\n--- 8) getDistinctNumbers ---');
  getDistinctNumbers([1, 2, 3, 2, 1, 6, 3, 4, 5, 2]);

  print('\n--- 9) CountGeneral ---');
  CountGeneral([1, 2, 3, 1, 3, 6]);

  print('\n--- 10) SelectionSort ---');
  SelectionSort([1, 0, 3, 6, 2, 5]);
}

int getMin(List<int> arr) {
  int min = arr[0];
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] < min) {
      min = arr[i];
    }
  }
  return min;
}

int getSecondSmallest(List<int> arr) {
  int smallest = getMin(arr);
  int? second;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > smallest && (second == null || arr[i] < second)) {
      second = arr[i];
    }
  }
  return second ?? smallest;
}

void containsValue(List<int> arr, int target) {
  bool found = false;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == target) {
      found = true;
      break;
    }
  }
  if (found) {
    print('Yes');
  } else {
    print('No');
  }
}

int CalculateEven(List<int> arr) {
  int sum = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] % 2 == 0) {
      sum += arr[i];
    }
  }
  return sum;
}

void assignGrades(List<int> scores) {
  int best = scores[0];
  for (int i = 1; i < scores.length; i++) {
    if (scores[i] > best) {
      best = scores[i];
    }
  }

  for (int i = 0; i < scores.length; i++) {
    String grade;
    if (scores[i] >= best - 10) {
      grade = 'A';
    } else if (scores[i] >= best - 20) {
      grade = 'B';
    } else if (scores[i] >= best - 30) {
      grade = 'C';
    } else if (scores[i] >= best - 40) {
      grade = 'D';
    } else {
      grade = 'F';
    }
    print('Student ${i + 1} score is ${scores[i]} and grade is $grade');
  }
}

void analyzeScores(List<int> scores) {
  int total = 0;
  for (int i = 0; i < scores.length; i++) {
    total += scores[i];
  }
  double average = total / scores.length;

  int above = 0;
  int below = 0;
  int equal = 0;
  for (int i = 0; i < scores.length; i++) {
    if (scores[i] > average) {
      above++;
    } else if (scores[i] < average) {
      below++;
    } else {
      equal++;
    }
  }

  print('Above average:$above');
  print('Below average:$below');
  print('Equal average:$equal');
}

void reverseArray(List<int> arr) {
  String result = '';
  for (int i = arr.length - 1; i >= 0; i--) {
    result += '${arr[i]} ';
  }
  print(result.trim());
}

void getDistinctNumbers(List<int> arr) {
  List<int> distinct = [];
  for (int i = 0; i < arr.length; i++) {
    if (!distinct.contains(arr[i])) {
      distinct.add(arr[i]);
    }
  }
  print('The number of distinct number is ${distinct.length}');
  print('The distinct numbers are: ${distinct.join(' ')}');
}

void CountGeneral(List<int> arr) {
  Map<int, int> counts = {};
  for (int i = 0; i < arr.length; i++) {
    counts[arr[i]] = (counts[arr[i]] ?? 0) + 1;
  }
  counts.forEach((number, count) {
    print('$number->$count');
  });
}

void SelectionSort(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    int temp = arr[i];
    arr[i] = arr[minIndex];
    arr[minIndex] = temp;
  }
  print(arr);
}