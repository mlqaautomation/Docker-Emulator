#!/bin/sh

# Wait for emulator to be ready
until emulator -list-avds | grep -q "$EMULATOR_DEVICE"; do
    echo "Waiting for emulator to be available..."
    sleep 5
done

# Start the emulator
echo "Starting emulator: $EMULATOR_DEVICE"
emulator -avd "$EMULATOR_DEVICE" &

# Wait for emulator to start
echo "Waiting for emulator to start..."
sleep "$START_DELAY"

# Keep the container running
exec tail -f /dev/null
