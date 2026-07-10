import 'package:quizler/models/quiz_questions.dart';

class Questions {
  static const questions = [
    QuizQuestions(
      question: 'What is the root of all things in Flutter?',
      answers: [
        'Widgets',
        'Blocks',
        'Objects',
        'Functions',
      ],
    ),
    QuizQuestions(
      question: 'Which programming language is used to write Flutter apps?',
      answers: [
        'Dart',
        'Kotlin',
        'Swift',
        'JavaScript',
      ],
    ),
    QuizQuestions(
      question:
          'Which function serves as the entry point for a Flutter application?',
      answers: [
        'main()',
        'runApp()',
        'init()',
        'build()',
      ],
    ),
    QuizQuestions(
      question:
          'What is the command used to check for errors and ensure your Flutter environment is set up correctly?',
      answers: [
        'flutter doctor',
        'flutter check',
        'flutter test',
        'flutter diagnose',
      ],
    ),
    QuizQuestions(
      question:
          'Which widget is typically used as the root of a Material Design app to provide a default app bar, floating action button, and drawer?',
      answers: [
        'Scaffold',
        'AppLayout',
        'Container',
        'SafeArea',
      ],
    ),
    QuizQuestions(
      question:
          'What type of widget should you use if its configuration can change dynamically during runtime?',
      answers: [
        'StatefulWidget',
        'StatelessWidget',
        'InheritedWidget',
        'ImmutableWidget',
      ],
    ),
    QuizQuestions(
      question:
          'Which lifecycle method in a StatefulWidget is called exactly once when the state object is inserted into the tree?',
      answers: [
        'initState()',
        'build()',
        'didChangeDependencies()',
        'dispose()',
      ],
    ),
    QuizQuestions(
      question:
          'Which method must be called to trigger a rebuild of a StatefulWidget and update the UI?',
      answers: [
        'setState()',
        'reload()',
        'update()',
        'refresh()',
      ],
    ),
    QuizQuestions(
      question:
          'What file is used to manage dependencies, assets, and fonts in a Flutter project?',
      answers: [
        'pubspec.yaml',
        'package.json',
        'config.xml',
        'flutter.json',
      ],
    ),
    QuizQuestions(
      question:
          'Which command is used to download the dependencies listed in your pubspec.yaml file?',
      answers: [
        'flutter pub get',
        'flutter install',
        'flutter pub download',
        'flutter dependencies update',
      ],
    ),
    QuizQuestions(
      question: 'What is the purpose of the SafeArea widget?',
      answers: [
        'To avoid operating system intrusions like notches and status bars',
        'To encrypt sensitive user data stored on the device',
        'To prevent the app from crashing due to null pointer exceptions',
        'To restrict the app from accessing unauthorized device hardware',
      ],
    ),
    QuizQuestions(
      question: 'Which widget allows you to arrange its children horizontally?',
      answers: [
        'Row',
        'Column',
        'Stack',
        'ListView',
      ],
    ),
    QuizQuestions(
      question: 'Which widget allows you to arrange its children vertically?',
      answers: [
        'Column',
        'Row',
        'Wrap',
        'Grid',
      ],
    ),
    QuizQuestions(
      question:
          'Which widget allows you to overlay children on top of each other?',
      answers: [
        'Stack',
        'Layer',
        'Group',
        'Align',
      ],
    ),
    QuizQuestions(
      question:
          'What compiler feature in Flutter allows you to see code changes in the emulator almost instantly without losing app state?',
      answers: [
        'Hot Reload',
        'Hot Restart',
        'Just-In-Time Compilation',
        'Live Sync',
      ],
    ),
    QuizQuestions(
      question:
          'What is the key difference between Hot Reload and Hot Restart?',
      answers: [
        'Hot Reload preserves state while Hot Restart destroys and recreates it',
        'Hot Reload recompiles native code while Hot Restart only recompiles Dart',
        'Hot Reload is for Android and Hot Restart is for iOS',
        'Hot Reload resets the application state from scratch',
      ],
    ),
    QuizQuestions(
      question: 'Which widget is used to apply padding around its child?',
      answers: [
        'Padding',
        'Margin',
        'Spacer',
        'Container',
      ],
    ),
    QuizQuestions(
      question:
          'Which Dart feature, introduced to prevent null pointer exceptions, ensures that variables cannot contain null unless explicitly declared?',
      answers: [
        'Sound Null Safety',
        'Null Pointer Guard',
        'Optional Chaining',
        'Strict Typing',
      ],
    ),
    QuizQuestions(
      question:
          'What keyword is used in Dart to declare a variable whose value is determined at compile-time and is deeply immutable?',
      answers: [
        'const',
        'final',
        'static',
        'immutable',
      ],
    ),
    QuizQuestions(
      question:
          'What keyword is used in Dart to declare a variable that can only be assigned once, but its value is determined at runtime?',
      answers: [
        'final',
        'const',
        'var',
        'late',
      ],
    ),
    QuizQuestions(
      question:
          'Which rendering engine did Flutter historically rely on, before moving toward Impeller?',
      answers: [
        'Skia',
        'Blink',
        'WebKit',
        'Gecko',
      ],
    ),
    QuizQuestions(
      question:
          'What is the name of Flutter’s modern, next-generation rendering engine designed to eliminate shader compilation stutter?',
      answers: [
        'Impeller',
        'Vulkan',
        'Metal',
        'EngineX',
      ],
    ),
    QuizQuestions(
      question:
          'Which widget should be used to display a scrollable, linear list of widgets efficiently, especially with a large number of items?',
      answers: [
        'ListView.builder',
        'SingleChildScrollView',
        'Column',
        'GridView',
      ],
    ),
    QuizQuestions(
      question: 'What is the purpose of the Keys property in Flutter widgets?',
      answers: [
        'To uniquely identify widgets and preserve their state when they move around the widget tree',
        'To encrypt local database files securely',
        'To define keyboard shortcuts for web and desktop builds',
        'To access remote API keys from configuration files',
      ],
    ),
    QuizQuestions(
      question:
          'Which widget provides a convenient way to apply margins, padding, background colors, and borders to a single child?',
      answers: [
        'Container',
        'BoxDecoration',
        'SizedBox',
        'Card',
      ],
    ),
    QuizQuestions(
      question:
          'Which widget is used to detect user interactions like taps, double taps, and drags when the child doesn\'t have built-in interactivity?',
      answers: [
        'GestureDetector',
        'InkWell',
        'TouchHandler',
        'ActionListener',
      ],
    ),
    QuizQuestions(
      question:
          'What is the primary difference between InkWell and GestureDetector?',
      answers: [
        'InkWell includes a visual material ripple effect on touch, while GestureDetector does not',
        'GestureDetector is only for iOS and InkWell is only for Android',
        'InkWell can handle complex drag gestures while GestureDetector cannot',
        'GestureDetector requires a StatefulWidget parent',
      ],
    ),
    QuizQuestions(
      question:
          'Which design language is the default look-and-feel provided out-of-the-box by Flutter?',
      answers: [
        'Material Design',
        'Cupertino',
        'Fluent Design',
        'Metro',
      ],
    ),
    QuizQuestions(
      question:
          'Which Flutter package is commonly used to build iOS-styled widgets?',
      answers: [
        'Cupertino',
        'Material',
        'Cocoa',
        'AppleCore',
      ],
    ),
    QuizQuestions(
      question:
          'What mechanism does Flutter use to manage navigation and routing between different screens?',
      answers: [
        'Navigator',
        'Router',
        'ScreenController',
        'Intent',
      ],
    ),
    QuizQuestions(
      question:
          'Which method is used to navigate to a new screen by pushing a route onto the Navigator stack?',
      answers: [
        'Navigator.push()',
        'Navigator.forward()',
        'Navigator.next()',
        'Navigator.show()',
      ],
    ),
    QuizQuestions(
      question:
          'Which method is used to return to the previous screen by removing the current route from the Navigator stack?',
      answers: [
        'Navigator.pop()',
        'Navigator.back()',
        'Navigator.close()',
        'Navigator.dismiss()',
      ],
    ),
    QuizQuestions(
      question:
          'What type of object does a Dart async function return when it represents a value that will be available in the future?',
      answers: [
        'Future',
        'Stream',
        'Promise',
        'Observable',
      ],
    ),
    QuizQuestions(
      question:
          'What type of object represents a continuous asynchronous sequence of data or events in Dart?',
      answers: [
        'Stream',
        'Future',
        'Subscription',
        'Emitter',
      ],
    ),
    QuizQuestions(
      question:
          'Which widget is specifically designed to rebuild itself dynamically whenever a Future completes?',
      answers: [
        'FutureBuilder',
        'StreamBuilder',
        'AsyncBuilder',
        'StatefulBuilder',
      ],
    ),
    QuizQuestions(
      question:
          'Which keyword is used to pause execution within an async function until a Future finishes resolving?',
      answers: [
        'await',
        'yield',
        'defer',
        'wait',
      ],
    ),
    QuizQuestions(
      question:
          'Which keyword is used in a generator function to emit values into a Stream?',
      answers: [
        'yield',
        'return',
        'emit',
        'push',
      ],
    ),
    QuizQuestions(
      question:
          'What is the official repository website for finding and publishing open-source Flutter/Dart packages?',
      answers: [
        'pub.dev',
        'flutterpackages.com',
        'npmjs.com',
        'dartpackages.org',
      ],
    ),
    QuizQuestions(
      question:
          'Which class or widget allows you to efficiently pass data down the widget tree without manually passing constructors through every nested level?',
      answers: [
        'InheritedWidget',
        'StatefulWidget',
        'Provider',
        'BuildContext',
      ],
    ),
    QuizQuestions(
      question:
          'What object is passed to a widget\'s build method to identify its location inside the widget tree hierarchy?',
      answers: [
        'BuildContext',
        'WidgetKey',
        'ElementTree',
        'RenderObject',
      ],
    ),
    QuizQuestions(
      question:
          'Which tree does Flutter maintain internally to handle the structural layout and actual rendering of elements on the screen?',
      answers: [
        'RenderObject Tree',
        'Widget Tree',
        'Element Tree',
        'State Tree',
      ],
    ),
    QuizQuestions(
      question:
          'Which tree acts as the glue or lifecycle coordinator between the lightweight configuration (Widget) and the heavy rendering object (RenderObject)?',
      answers: [
        'Element Tree',
        'State Tree',
        'Virtual Tree',
        'DOM Tree',
      ],
    ),
    QuizQuestions(
      question: 'What is the purpose of a SizedBox widget?',
      answers: [
        'To force a specific, fixed width and height on its child or to create empty whitespace',
        'To shrink images automatically to fit the screen size',
        'To convert a Stateless widget into a Stateful widget',
        'To clip a child widget into a perfect circle',
      ],
    ),
    QuizQuestions(
      question:
          'Which widget forces its child to expand and fill all available remaining space along its parent Column or Row main axis?',
      answers: [
        'Expanded',
        'Flexible',
        'Spacer',
        'SizedBox.expand',
      ],
    ),
    QuizQuestions(
      question: 'What is the main difference between Expanded and Flexible?',
      answers: [
        'Expanded forces the child to fill the space, while Flexible allows the child to be smaller than the space',
        'Expanded is used in Columns and Flexible is only used in Rows',
        'Expanded requires a stateful parent, while Flexible does not',
        'Flexible cannot take a flex factor parameter',
      ],
    ),
    QuizQuestions(
      question:
          'Which widget allows you to clip its child widget into a rounded rectangle shape?',
      answers: [
        'ClipRRect',
        'ClipOval',
        'ClipRect',
        'Card',
      ],
    ),
    QuizQuestions(
      question:
          'Which asset folder must be explicitly defined in your pubspec.yaml file for images to be loaded into your Flutter code?',
      answers: [
        'assets',
        'images',
        'res',
        'static',
      ],
    ),
    QuizQuestions(
      question:
          'Which widget is used to load and display an image from a remote URL over the internet?',
      answers: [
        'Image.network',
        'Image.asset',
        'Image.file',
        'Image.url',
      ],
    ),
    QuizQuestions(
      question:
          'What lifecycle method should you always override to clean up controllers, streams, and animations to prevent memory leaks?',
      answers: [
        'dispose()',
        'deactivate()',
        'initState()',
        'destroy()',
      ],
    ),
    QuizQuestions(
      question:
          'What mechanism does Dart use to execute asynchronous tasks on a single thread without blocking the user interface?',
      answers: [
        'Event Loop',
        'Web Workers',
        'Multi-threading',
        'Background Workers',
      ],
    ),
    QuizQuestions(
      question:
          'What feature can you use in Dart to run heavy computational tasks on a separate CPU thread to avoid lagging the UI?',
      answers: [
        'Isolates',
        'Threads',
        'Async/Await',
        'Promises',
      ],
    ),
  ];

  List<QuizQuestions> getShuffledList(int questionsAmount) {
    List<QuizQuestions> newList = List.of(questions);
    newList.shuffle();
    return (questionsAmount >= 1 && questionsAmount <= questions.length)
        ? newList.sublist(0, questionsAmount)
        : newList;
  }
}
