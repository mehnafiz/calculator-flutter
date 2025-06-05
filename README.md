# Calculator Flutter App

## Overview
A simple yet functional calculator application built with Flutter. This app provides basic arithmetic operations, square root functionality, and maintains a calculation history.

## Features

- **Basic Operations**: Addition, subtraction, multiplication, division
- **Advanced Functions**: Square root calculation
- **Memory Buttons**: 
  - `C` - Clear current input
  - `B` - Backspace (delete last digit)
  - `%` - Percentage calculation
- **History Tracking**: View previous calculations
- **Clear History**: Option to reset calculation history
- **Decimal Support**: Floating point calculations
- **Responsive Design**: Works on various screen sizes

## Screenshots

| Main Interface | Initial State | Calculation History |
|---------------|--------------|---------------------|
| ![Main Calculator Interface](Screenshot from 2025-06-05 18-39-09.png) | ![Initial State](Screenshot from 2025-06-05 18-39-31.png) | ![Calculation History](Screenshot from 2025-06-05 18-39-44.png) |

## Usage

1. **Basic Calculations**:
   - Tap numbers to enter values
   - Select an operation (+, -, ×, ÷)
   - Press `=` to see the result

2. **Advanced Functions**:
   - Use `√` for square root calculations
   - Use `%` for percentage calculations

3. **Editing**:
   - `B` - Delete last entered digit
   - `C` - Clear current input

4. **History**:
   - Previous calculations are automatically saved
   - Tap "Clear History" to remove all history

## Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/calculator-flutter.git

# Navigate to project directory
cd calculator-flutter

# Install dependencies
flutter pub get

# Run the app
flutter run
