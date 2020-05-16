

eb create memery-backend \
--elb-type application \
--enable-spot \
--platform "ruby-2.6-(puma)" \
--region us-east-1 \
--sample