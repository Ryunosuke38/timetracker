# User

- firstname [String]
- lastname [String]
- email [String]
- password [String]
- has many Projects

# Project

- name [String]
- description [Text]
- belongs to many Users
- has one Category
- has many TimeEntries

# Category

- name [String]
- description [Text]
- belongs to Project

# TimeEntry

- Start date [Date]
- End date [Date]
- Duration in minutes(Calculated by start and end date) [Integer]
- belongs to Project

