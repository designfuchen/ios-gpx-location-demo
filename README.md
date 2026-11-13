# ios-gpx-location-demo

一个用 Xcode GPX 模拟定位的 Objective-C 示例项目。

这不是可以单独安装到手机上使用的改定位 App。它演示的是 Xcode 自带的调试功能：用 `Location.gpx` 把模拟器，或通过数据线调试连接的 iPhone，的模拟位置设置到指定坐标。项目里的 `LocationPrinter` 会把当前经纬度打印到控制台。

仅用于开发和测试。

## 使用方法

1. 用 Xcode 打开 `loctiontest.xcodeproj`。
2. 在 Signing & Capabilities 里选择你自己的开发团队（Development Team）。工程里的团队 ID 已留空。
3. 如需更换模拟位置，编辑 `loctiontest/Location.gpx`：保留一个 `<wpt>` 表示定点，或多个航点表示路线。文件里还注释了伦敦、维也纳、马尼拉、拉巴斯等示例坐标。
4. 也可以在运行后通过菜单 **Debug > Simulate Location** 选择 GPX 文件或系统自带地点。
5. 选择模拟器或已连接并开启开发者模式的 iPhone，运行项目。控制台会打印当前纬度、经度和精度。

默认模拟位置是香港（约 22.3079, 114.1736）。

---

# ios-gpx-location-demo

An Objective-C demo that uses Xcode's GPX location simulation to set the simulated location of the Simulator, or of an iPhone connected for debugging. It is not a standalone location-spoofing app you install on a phone.

`LocationPrinter` prints the current coordinates to the console.

For development and testing only.

## How to use

1. Open `loctiontest.xcodeproj` in Xcode.
2. Choose your own signing team under Signing & Capabilities. The Development Team field in this project is left empty on purpose.
3. To change the simulated location, edit `loctiontest/Location.gpx`: keep one `<wpt>` for a single point, or add several waypoints for a route. Commented examples include London, Vienna, Manila, and La Paz.
4. You can also use **Debug > Simulate Location** after the app is running to pick the GPX file or a built-in location.
5. Run on the Simulator, or on a debug-connected iPhone with Developer Mode enabled. The console will print latitude, longitude, and accuracy.

The default simulated location is Hong Kong (approx. 22.3079, 114.1736).
