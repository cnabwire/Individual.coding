#!/bin/bash

# Create main directory
mkdir submission_reminder_app

# Navigate to the created directory
cd submission_reminder_app || exit

# Create subdirectories
mkdir -p app modules assets config

# Create files
touch app/reminder.sh
touch modules/functions.sh
touch assets/submissions.txt
touch startup.sh

# Add a sample message to the created files
echo "#!/bin/bash" > app/reminder.sh
echo "#!/bin/bash" > modules/functions.sh
echo "#!/bin/bash" > startup.sh

echo "Setup complete!"
