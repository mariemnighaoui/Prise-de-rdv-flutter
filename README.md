Medical Appointment Booking – Mobile App (FlutterFlow + Firebase)

A mobile application to manage medical appointments: secure login (password or fingerprint), appointment management, history, search by patient, doctor-based pricing and an SMS reminder shortcut. Built with FlutterFlow (Flutter) and Firebase (Authentication, Cloud Firestore).

Academic project – ESPRIT School of Engineering, 1st year of the engineering cycle (2026–2027). Pair project: this README describes my part only.

Features

Authentication

Login with email and password
Password recovery by email
Biometric login (fingerprint)

Appointment management

View the list of upcoming appointments
Add a new appointment
Edit an appointment: double-tap it in the list to open the edit page
History of past appointments

Search and pricing

Search by patient name
Price displayed according to the selected doctor

Reminders

SMS reminder shortcut: a button opens the phone's messaging app with a pre-filled reminder message for the patient (FlutterFlow Launch URL action). The message is sent by the user, not automatically.
Data model (Cloud Firestore)

Collection rendez_vous (appointments):

Field	Type
patientNom	String
patientTelephone	String
medecin	String
motif	String
date	DateTime
heure	String

Other collections: users.

Tech stack
Area	Technology
App builder	FlutterFlow (generates Flutter / Dart code)
Authentication	Firebase Authentication (email/password, password recovery)
Database	Cloud Firestore
Biometrics	Fingerprint authentication on the device
Version control	Git / GitHub
Screenshots

<img width="607" height="851" alt="Capture d&#39;écran 2026-11-10 190604" src="https://github.com/user-attachments/assets/1c4a38a3-adf1-4255-9263-86fe081d3355" />
<img width="415" height="785" alt="Capture d&#39;écran 2026-11-10 190701" src="https://github.com/user-attachments/assets/68b14695-a965-44f3-b431-85609a285ca3" />
<img width="385" height="777" alt="Capture d&#39;écran 2026-11-10 190708" src="https://github.com/user-attachments/assets/f0ad1b94-ba6b-448e-bf81-d1cf64f94e33" />

How to run

This project was built with FlutterFlow. To run the exported code:

Install Flutter.
Clone this repository and run flutter pub get.
Connect your own Firebase project (configuration files are not included in this repository).
Run flutter run.
Scheduled improvements
Fully automatic SMS reminders (scheduled backend function and an SMS API).
