# Use the base image
FROM budtmo/docker-android:emulator_14.0

# Set default environment variables
ENV EMULATOR_DEVICE="Samsung Galaxy S10"
ENV WEB_VNC="true"
ENV START_DELAY=180
ARG PORT=6080

# Expose the specified port
EXPOSE ${PORT}

# Set the command to run the emulator
CMD ["/usr/local/bin/start_emulator.sh"]
