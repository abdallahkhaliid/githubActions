

EXPECTED_OUTPUT="Hello, World!"

OUTPUT=$(node -e "console.log(require('./src/app')('World'))")

if [ "$OUTPUT" == "$EXPECTED_OUTPUT" ]; then
  echo "Test passed!"
else
  echo "Test failed!"
  echo "Expected: $EXPECTED_OUTPUT"
  echo "Got: $OUTPUT"

  exit 1
fi