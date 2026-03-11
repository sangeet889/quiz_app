class QuestionModel {
  final String question;
  final List<String> options;
  final String correctAnswer;

  QuestionModel({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}

final List<QuestionModel> allQuestions = [
  QuestionModel(
    question: "What is the capital of France?",
    options: ["London", "Berlin", "Paris", "Madrid"],
    correctAnswer: "Paris",
  ),
  QuestionModel(
    question: "How many continents are there in the world?",
    options: ["5", "6", "7", "8"],
    correctAnswer: "7",
  ),
  QuestionModel(
    question: "What is 5 + 7?",
    options: ["10", "11", "12", "13"],
    correctAnswer: "12",
  ),
  QuestionModel(
    question: "Which planet is known as the Red Planet?",
    options: ["Venus", "Mars", "Jupiter", "Saturn"],
    correctAnswer: "Mars",
  ),
  QuestionModel(
    question: "What is the largest ocean on Earth?",
    options: [
      "Atlantic Ocean",
      "Indian Ocean",
      "Arctic Ocean",
      "Pacific Ocean",
    ],
    correctAnswer: "Pacific Ocean",
  ),
  QuestionModel(
    question: "How many days are there in a week?",
    options: ["5", "6", "7", "8"],
    correctAnswer: "7",
  ),
  QuestionModel(
    question: "What color do you get when you mix red and blue?",
    options: ["Green", "Purple", "Orange", "Yellow"],
    correctAnswer: "Purple",
  ),
  QuestionModel(
    question: "Which animal is known as the King of the Jungle?",
    options: ["Tiger", "Elephant", "Lion", "Bear"],
    correctAnswer: "Lion",
  ),
  QuestionModel(
    question: "How many legs does a spider have?",
    options: ["6", "8", "10", "12"],
    correctAnswer: "8",
  ),
  QuestionModel(
    question: "What is the opposite of 'hot'?",
    options: ["Warm", "Cold", "Cool", "Freezing"],
    correctAnswer: "Cold",
  ),
  QuestionModel(
    question: "Which shape has three sides?",
    options: ["Square", "Circle", "Triangle", "Rectangle"],
    correctAnswer: "Triangle",
  ),
  QuestionModel(
    question: "What is 10 - 4?",
    options: ["5", "6", "7", "8"],
    correctAnswer: "6",
  ),
  QuestionModel(
    question: "Which season comes after winter?",
    options: ["Summer", "Spring", "Autumn", "Fall"],
    correctAnswer: "Spring",
  ),
  QuestionModel(
    question: "What is the largest land animal?",
    options: ["Giraffe", "Elephant", "Rhinoceros", "Hippopotamus"],
    correctAnswer: "Elephant",
  ),
  QuestionModel(
    question: "How many hours are in a day?",
    options: ["12", "20", "24", "36"],
    correctAnswer: "24",
  ),
  QuestionModel(
    question: "What do bees make?",
    options: ["Milk", "Honey", "Silk", "Wool"],
    correctAnswer: "Honey",
  ),
  QuestionModel(
    question: "Which fruit is yellow and curved?",
    options: ["Apple", "Banana", "Orange", "Grape"],
    correctAnswer: "Banana",
  ),
  QuestionModel(
    question: "What comes after Monday?",
    options: ["Wednesday", "Tuesday", "Thursday", "Sunday"],
    correctAnswer: "Tuesday",
  ),
  QuestionModel(
    question: "How many sides does a square have?",
    options: ["3", "4", "5", "6"],
    correctAnswer: "4",
  ),
  QuestionModel(
    question: "What is the color of the sky on a clear day?",
    options: ["Green", "Blue", "Red", "Yellow"],
    correctAnswer: "Blue",
  ),
];
