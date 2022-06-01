SmartSpace ensures that layouts are visually balanced. Spacings are sized in constant increments, ensuring a consistent visual rhythm across each screen.

<p>
	<img alt='8dp-4dp-units' src='https://lh3.googleusercontent.com/1aVbLcYO78rJwl8O71FUTFxENfu3tkplWZmOuYTLAnsa8Z1bAx4L9unTJ4WI6RXJHDOckig_vBtJyg3tJxsP6jhm-clrzcm0kXVX0w0GBhPqWdFtjspL=w1064-v0' width='100%'>
</p>

## Features

* Defines a constant for consistent spacing
* Automatically apply the spacing to the right axis direction

## Getting started

Define a spacing base

```dart
kSpace = yourSpace; // default: 8.0
```

## Usage

Use kSpace as a constant for spacings

```dart
Padding(
	padding: EdgeInsets.symmetric(
		horizontal: kSpace * 2,
		vertical: kSpace,
	),
	child: ...
)
```

Use Space on Flex and ScrollView children


```dart
Space(multiplier), // creates a space of kSpace * multiplier
```

## Examples

```dart
Column(
	children: [
		...
		Space(),
		...
	],
)
```

```dart
Row(
	children: [
		...
		Space(),
		...
	],
)
```

```dart
ListView(
	children: [
		...
		Space(),
		...
	],
)
```

```dart
ListView.separated(
	itemCount: ...
	separatorBuilder: (_, __) => Space(),
	itemBuilder: ...
)
```

## Additional information

If you notice any bugs not present in [issues](https://github.com/ggalambas/smart_space/issues), please file a new issue.
If you are willing to fix or enhance things yourself, your are very welcome to make a pull request.