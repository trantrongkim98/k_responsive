# K_RESPONSIVE

- Device Type

```dart
enum DeviceType {
  /// 720 < [tablet] <= 1024
  tablet,

  /// something else
  web,

  /// 480 < [phoneLarge] <= 720
  phoneLarge,

  /// 320 < [phoneMedium] <= 480
  phoneMedium,

  /// [phoneSmall] <= 320
  phoneSmall,

  /// [watch] format  default <= 200
  watch,
}
```

## Usage

- Update BuildContext or contraints of device

```dart
    KResponsive.ins.setValue(context: context);
```

- Update constaints of devices

```dart
    KResponsive.ins.setValue(
      context: context,
      phoneLarge: 720,
      phoneMedium: 480,
      phoneSmall: 320,
      tablet: 1024,
      watch: 200,
    );
```

- Use with BuildContext

```dart
    context.responsive<T>(
            web: 512,
            watch: 24.0,
            tablet: 500.0,
            phoneSmall: 64.0,
            phoneMedium: 64,
            phoneLarge: 64.0,
          )
```

- Use without BuildContext
  
  - Use when **Updated**  BuildContext
  - Use when without Widget

- **Note: If BuildContext's null then BuildContext is required else don't need**

```dart
     KResponsive.responsive<T>(
            context:context,
              phoneLarge: 64.0,
              phoneMedium: 48.0,
              phoneSmall: 32.0,
              tablet: 500.0,
              watch: 24.0,
              web: 160.0)
```

- Responsive Widget

  - use it if you need responsive a Widget

  - **it don't need BuildContext so it use LayoutBuilder to get BuildContext**

```dart
    Widget responsiveWidget() {
    return KResponsive.widgetBuilder(
      phoneLarge: Container(width: 50, height: 50, color: Colors.yellow),
      phoneMedium: Container(width: 50, height: 50, color: Colors.amber),
      phoneSmall: Container(width: 50, height: 50, color: Colors.cyan),
      tablet: Container(width: 50, height: 50, color: Colors.green),
      watch: Container(width: 50, height: 50, color: Colors.pink),
      web: Container(width: 50, height: 50, color: Colors.blue),
    );
  }
```
