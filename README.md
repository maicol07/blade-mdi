Laravel Blade Material Design Icons
===================================

This repository is a fork of the original [renoki-co/blade-mdi](https://github.com/renoki-co/blade-mdi) repository which is now archived and read-only. I have made the following modifications to the original code:

- Updated dependencies
- Added new icons
- Added fill=currentColor property to all icons (To make them work properly with [Tailwind CSS](https://tailwindcss.com/))

Please note that this repository is not associated with the original repository or its maintainers. If you have any questions or suggestions, you can open an issue in this repository.


Blade MDI adds Material Design Icons as Laravel Blade UI Kit components. For more information regarding Material Design Icons, check https://materialdesignicons.com

## 🚀 Installation

You can install the package via composer:

```bash
composer require maicol07/blade-mdi
```

This is not required, but if you want to publish the SVGs locally, you can do so:

```bash
php artisan vendor:publish --provider="Maicol07\BladeMdi\BladeMdiServiceProvider" --tag="blade-mdi"
```

## 🙌 Usage

Using [blade-ui-kit/blade-icons](https://github.com/blade-ui-kit/blade-icons), all icons can be shown as directives:

```blade
<x-mdi-account />
```

For a complete list of icons, check https://materialdesignicons.com

or search for an icon here: [Blade UI kit](https://blade-ui-kit.com/blade-icons?set=76#search)

## Updating Icons

If you wish to contribute and update the latest icons, you can fork the repo, run `download.sh` and submit a PR. What `download.sh` does is to download the `master` branch of https://github.com/Templarian/MaterialDesign and copy the distributables svgs to local svgs.

## 🐛 Testing

``` bash
php vendor/bin/phpunit
```

## 🤝 Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) for details.

## 🔒  Security

If you discover any security related issues, please email inerba@gmail.com instead of using the issue tracker.

## 🎉 Credits

- [Francesco Apruzzese](https://github.com/inerba)
- [Alex Renoki](https://github.com/rennokki)
- [All Contributors](../../contributors)

## 📄 License

The MIT License (MIT). Please see [License File](LICENSE) for more information.
