# User

- firstname [String]
- lastname [String]
- email [String]
- password [String]
- has many Projects [Array[Project]]

# Project

- name [String]
- description [Text]
- belongs to User [User]
- has one Category [Category]
- has many TimeEntries [Array[TimeEntry]]

# Category

- name [String]
- description [Text]
- belongs to Project [Project]

# TimeEntry

- Start date [Date]
- End date [Date]
- Duration in minutes(Calculated by start and end date) [Integer]
- belongs to Project [Project]

