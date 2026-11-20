# AB Motors

A simple Flutter UI demo for a car rental app. It shows a home screen with car deals and dealers, plus an animated bottom navigation bar.

## Features

- Clean app bar with the app name
- "Available Cars" banner card
- **Top Deals**: horizontally scrollable car cards
- **Top Dealers**: horizontally scrollable dealer cards (Hertz, Avis, TCG)
- Bottom navigation bar with 4 icons: Home, Search, Alerts, Profile
- Tapping an icon expands it smoothly to show its label

> This is a UI-only project. The navigation bar only changes the highlighted icon and does not switch pages yet.

## Widgets Used

- **MaterialApp**: the root of the app, sets the theme and the home screen.
- **ThemeData / ColorScheme**: sets the app colors and the grey background.
- **Scaffold**: the basic page layout (app bar, body, bottom bar).
- **AppBar**: the top bar showing "AB Motors".
- **SafeArea**: keeps content away from the notch and phone gesture area.
- **SingleChildScrollView**: makes the whole page scroll vertically.
- **Column / Row**: arrange widgets vertically or horizontally.
- **ListView (horizontal)**: scrolls the car and dealer cards sideways.
- **Container + BoxDecoration**: draws cards with color and rounded corners.
- **ClipRRect**: clips the car images so they have rounded corners.
- **Image.asset**: loads car images from the assets folder.
- **Padding / SizedBox / Spacer**: add spacing between widgets.
- **Text / TextStyle**: show text with custom size, weight and color.
- **IconButton**: the round arrow button on the banner card.
- **SnackBar**: shows a small message when the arrow button is pressed.

## Navigation Bar

- **NavItem (custom widget)**: one reusable class for each nav icon. It takes an icon, a label, a selected state and a tap action.
- **StatefulWidget + setState**: remembers which icon is selected and redraws the screen when it changes.
- **selectedIndex**: a number (0 to 3) that stores the current selected icon.
- **GestureDetector**: detects taps on each nav item.
- **AnimatedContainer**: smoothly changes the background color of the selected item.
- **AnimatedSize**: makes the label grow horizontally instead of popping in.
- **Icon**: shows the home, search, notification and profile icons.

## Project Structure

```
lib/
├── main.dart                # App entry point (MyApp)
└── ScrollableLayout.dart    # Home screen + NavItem widget
assets/
└── images/                  # Car images
```

## Getting Started

### Requirements

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- An emulator or a physical device

### Run the project

```bash
git clone <your-repo-url>
cd <project-folder>
flutter pub get
flutter run
```

## Assets Setup

Place these images in `assets/images/`:

- `buick.jpg`
- `lotus.jpg`
- `oldcar.jpg`

Then register them in `pubspec.yaml`:

```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/images/
```

## Possible Next Steps

- Create separate pages for Search, Alerts and Profile
- Switch pages when a nav item is tapped
- Replace the hard-coded cards with data from a list or an API