# MJCalc

A calculator app that is functionally resemblant of the Casio MJ-12D and Casio MJ-120D.

## Features

- Switch between Casio MJ-120D and Casio MJ-12D modes via a dropdown, each exposing only the functions that model actually has
- 12-digit display with standard four-function arithmetic
- Tax calculation keys (TAX+ / TAX-) with a programmable, persistent tax rate
- Mark Up (MU) key for calculating selling price from cost and margin percentage
- Independent 3-key memory (M+, M-, MRC)
- Grand Total (GT) key for accumulating results across sequential calculations
- 150-step Check & Correct buffer: review, auto-review, and correct any previous calculation step, with the rest of the chain recalculated automatically
- Constant calculation (K) for repeating an operation across multiple entries
- Configurable rounding (CUT / UP / 5-4) and decimal place selectors
- Light and dark themes with selectable accent colors

## Getting Started

1. Clone the repository:
```bash
   git clone https://github.com/obhirup/MJCalc.git
   cd MJCalc
```

2. Install dependencies:
```bash
   flutter pub get
```

3. Run the app:
```bash
   flutter run
```

## Built With

- [Flutter](https://flutter.dev/)
- [provider](https://pub.dev/packages/provider) — state management
- [shared_preferences](https://pub.dev/packages/shared_preferences) — local storage

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
