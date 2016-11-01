## Clear all static view files
echo "## ---------------------------------------------------------- ##";
echo "##    Clearing existing static view files...";
echo "## ---------------------------------------------------------- ##";
rm -rf var/view_preprocessed pub/static

## Deploy static view files
echo "## ---------------------------------------------------------- ##";
echo "##    Deploying new static view files...";
echo "## ---------------------------------------------------------- ##";
php bin/magento setup:static-content:deploy

## Clean the cache
echo "## ---------------------------------------------------------- ##";
echo "##    Cleaning the cache...";
echo "## ---------------------------------------------------------- ##";
php bin/magento cache:flush

echo "## ---------------------------------------------------------- ##";
echo "##    Done!";
echo "## ---------------------------------------------------------- ##";
