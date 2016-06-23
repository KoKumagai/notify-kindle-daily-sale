# notify-kindle-daily-sale
You can notify Japanese kindle daily sale to your iphone.

## Usage
1. Register im.kayac.com ( http://im.kayac.com )
2. Install im.kayac.com app on your iphone ( https://itunes.apple.com/jp/app/im.kayac.com-free-edition/id336129317 )
3. Clone it ( `git clone https://github.com/KoKumagai/notify-kindle-daily-sale.git` )
4. Install gems ( `bundle install` )
5. Set your im.kayac.om username ( `export IM_KAYAC_USERNAME=your_username` )
6. Set your im.kayac.om password ( `export IM_KAYAC_PASSWORD=your_password` )
7. Run Ruby script (`ruby notify_kindle_daily_sale.rb`)

## Scheduler
You can schedule Ruby script to be executed.

i.e. ( every 12:01 a.m. )

    $ crontab -e

```
01 00 * * * /bin/bash -lc 'ruby /home/ko/notify_kindle_daily_sale.rb'
```

## Contributing

1. Fork it ( https://github.com/KoKumagai/notify-kindle-daily-sale/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

The script is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
