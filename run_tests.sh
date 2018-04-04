IPHONE6SIM="platform=iOS Simulator,name=iPhone 6,OS=11.2"

## build iOS framework:
xcodebuild \
  -project PocketSVG.xcodeproj \
  -scheme "PocketSVG (iOS)" \
  -destination "$IPHONE6SIM" \
  clean build | xcpretty

## build macOS framework:
xcodebuild \
  -project PocketSVG.xcodeproj \
  -scheme "PocketSVG (Mac)" \
  -destination "arch=x86_64" \
  clean build | xcpretty

## build iOS demo:
xcodebuild \
  -workspace Demos/Demos.xcworkspace \
  -destination "$IPHONE6SIM" \
  -scheme Demo-iOS \
  clean build | xcpretty

## build macOS demo:
xcodebuild \
  -workspace Demos/Demos.xcworkspace \
  -destination "arch=x86_64" \
  -scheme Demo-macOS \
  clean build | xcpretty

## run tests:
xcodebuild \
  -project PocketSVG.xcodeproj \
  -scheme PocketSVGTests \
  -destination "$IPHONE6SIM" \
  test | xcpretty
