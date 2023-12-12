# Objective:

# Learn and practice configuring Prometheus integration, adding data sources, creating dashboards, and setting up alerting in an existing Grafana installation.

# Instructions:

# 1. Access Your Existing Grafana Instance:

# Open a web browser and navigate to your Grafana instance.
# ie. "dlogpit-graf.acad.opswerks.net"
# user and password should be by default be both "admin"
# 2. Add Your Own Prometheus as Data Source:

# In Grafana, go to "Settings" -> "Data Sources" -> "Add your first data source."
# Choose "Prometheus" from the list and configure it with the URL of your own Prometheus instance.
# Save the data source.
# 3. Add Your Partner’s Prometheus as Data Source:

# Repeat the above steps to add your partner’s Prometheus instance as a data source.
# 4. Add an Open Source/Community Dashboard:

# In Grafana, go to the "+" menu on the left sidebar and select "Import."
# Enter the dashboard ID or URL of an open-source/community dashboard (e.g., from Grafana's dashboard repository).
# Adjust the data source to use your own Prometheus instance.
# Should be able to monitor such as CPU usage of your host, Memory usage etc.
# 5. Create Your Own Dashboard:

# In Grafana, go to the "+" menu on the left sidebar and select "Dashboard."
# Add a new panel and choose your Prometheus data source.
# Customize the panel with a metric or query relevant to your monitoring needs.
# You can choose your own query
# Save the dashboard.
# 6. Configuring Alerting in Grafana:

# Go to "Alerting" in Grafana and configure notification channels (e.g., Slack, Email) in "Notification channels" under "Settings."
# Create a new alert in one of your dashboards based on a metric.
# Configure the alert to send notifications to the previously configured notification channels.
# 7. Test Alerting:

# Simulate a condition that triggers the alert in your Prometheus data source.
# Verify that alert notifications are received through the configured channels.