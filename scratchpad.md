
1) eb init

1) eb create

eb init memery-api --keyname "brian_old_macbook" --platform "ruby-2.6-(puma)"

## this will do it with sample app
eb create dev-stage \
--elb-type application \
--enable-spot \
--sample

(--debug helps)

## this will do it with code zip and upload as well
eb create test-stage \
--elb-type application \
--enable-spot --debug