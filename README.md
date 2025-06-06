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
|----------------|---------------|----------------------|
| <img src="https://github.com/user-attachments/assets/18fc547e-1f94-4bee-9c55-2cd5cd63a82d" width="300"> | <img src="https://github.com/user-attachments/assets/f4054a04-1df7-4f38-9f84-d4d92b7a9e13" width="300">  | <img src="https://github.com/user-attachments/assets/e22b249f-bde7-401f-9ffa-15fb97bec11a" width="300">|

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
git clone https://github.com/mehnafiz/calculator-flutter.git

# Navigate to project directory
cd calculator-flutter

# Install dependencies
flutter pub get

# Run the app
flutter run
