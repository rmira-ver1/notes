# Prometheus configured with alerting rules.
# Instructions:

# 1. Configure Email Notification Channel:

# Open the Prometheus alert manager configuration file (alertmanager.yml).

# Add a new email notification channel configuration. Feel free to use online resources in finding the base configurates

# Update the alert manager to use the configuration file.

# 2. Create Meaningful Alerts:

# Edit the Prometheus alerting rules file (prometheus.rules.yml).Feel free to use online resources in finding the base configurates

# Define a meaningful alert rule. For example, alert when CPU usage exceeds 90%:

# Reload the Prometheus configuration to apply the new rules.

# 3. Configure Webhook Notification Channel:

# Open the Prometheus alert manager configuration file (alertmanager.yml).

# Add a new webhook notification channel configuration.Feel free to use online resources in finding the base configurates

# Update the alert manager to use the configuration file.

# 4. Trigger Alerts:

# Simulate conditions that trigger the defined alerts. This might involve creating conditions that meet the criteria specified in your alerting rules.
# 5. Verify Email Notifications:

# Wait for alerts to trigger and since we dont have access to the SMTP server. Instead go to the alerts and verify if the configuration is working and it should be set as firing
# 6. Verify Webhook Notifications:

# Wait for alerts to trigger and check your webhook service for incoming HTTP POST requests.