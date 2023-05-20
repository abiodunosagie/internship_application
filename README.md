# Internship Task

A new Flutter project.

## Getting Started
# Onboarding Application Documentation
## Introduction
The onboarding application is designed to provide a seamless user onboarding experience. It leverages the BLoC (Business Logic Component) pattern to separate business logic from UI components, improving maintainability and testability. One of the key features of the application is the profile screen, which allows users to set up their profiles during the onboarding process.
![onboarding 1](https://github.com/abiodunosagie/internship_application/assets/110603494/fe4d121a-c627-4581-bd7c-36f58b8f9513)
![onboarding 2](https://github.com/abiodunosagie/internship_application/assets/110603494/df1d42e6-dce5-4608-9f66-81f5e20a258d)
## Table of Contents
Installation and Setup
BLoC Overview
Profile Screen
## 1. Installation and Setup
To install and set up the onboarding application, follow these steps:
![profilescreen](https://github.com/abiodunosagie/internship_application/assets/110603494/e531f72f-f4b5-40b4-8c6b-b21ab52b5f82)
Clone the repository from https://github.com/abiodunosagie/internship_application.git.
Install required dependencies using flutter pub get or access the pubspec.yaml 
Configure the necessary environment variables, such as API keys or database credentials.
Build and run the application on [target platform].
## 2. BLoC Overview
The BLoC pattern is utilized in the onboarding application to separate the business logic from the UI components. It promotes modularity, reusability, and testability. Here's an overview of the BLoC architecture in the onboarding application:
![bloc cubit](https://github.com/abiodunosagie/internship_application/assets/110603494/6f47a8ec-75cc-4dc0-9634-33c00ff8777c)

<b>OnboardingBloc:</b> Responsible for managing the overall onboarding flow and state management.
<b>UserBloc:</b> Handles user-related operations, such as registration, authentication, and profile management.
<b>OnboardingEvent:</b> Defines the events triggered during the onboarding process.
<b>OnboardingState: </b>Represents the different states of the onboarding flow.
## 3. Profile Screen
The profile screen is a crucial component of the onboarding process, allowing users to set up their profiles. Here are the key features and functionalities of the profile screen:
![profile page](https://github.com/abiodunosagie/internship_application/assets/110603494/68e1d93f-da2a-46b2-bdf9-3271a7760cbb)

<b>Profile Form:</b>The profile screen contains a form where users can enter their personal information, such as name, email, and profile picture.
<b>Validation:</b>Input fields in the profile form are validated to ensure the correctness and integrity of the entered data.
<b>Error Handling:</b>Proper error handling is implemented to provide meaningful feedback to the user in case of any validation or submission errors.
<b>Profile Picture Upload:</b> Users can upload a profile picture from their device's gallery or take a photo using the camera.
<b>Data Persistence:</b>The entered profile data is securely stored and associated with the user account for future reference.
## Usage
To utilize the profile screen in your onboarding application, follow these steps:
![bottom nav bar](https://github.com/abiodunosagie/internship_application/assets/110603494/ba56268a-e300-4ce1-80d3-10f65246f587)
Navigate to the profile screen after the user has completed the initial steps of the onboarding process.
![profile edit page](https://github.com/abiodunosagie/internship_application/assets/110603494/4b411f49-b258-4eb2-9086-e14b26aad799)
![profile page](https://github.com/abiodunosagie/internship_application/assets/110603494/c302c4c1-00da-472a-a81a-860f921d5db8)
)
Display the profile form with appropriate input fields for name, email, and profile picture.
Implement form validation to ensure the entered data meets the required criteria.
Handle errors and display meaningful messages to the user if any validation or submission issues occur.
Provide an option for users to upload a profile picture from the gallery or take a photo using the device's camera.
On successful submission of the profile form, store the data securely and associate it with the user account.
# Conclusion
This documentation provides an overview of the onboarding application, explains the utilization of the BLoC pattern, and describes the features and usage of the profile screen. By following the provided instructions, you can successfully install, set up, and integrate the onboarding application with the profile screen in your project.

Feel free to customize and expand upon this documentation based on the specific requirements and needs of your onboarding application.
This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
