## Upgrade database
echo "## ---------------------------------------------------------- ##";
echo "##    Upgrading the database...";
echo "## ---------------------------------------------------------- ##";
php bin/magento setup:upgrade;

## Clear code generation and dependency injection files
echo "## ---------------------------------------------------------- ##";
echo "##    Clearing code generation and dependency injection files...";
echo "## ---------------------------------------------------------- ##";
rm -rf var/di var/generation;

## Compile dependency injection
echo "## ---------------------------------------------------------- ##";
echo "##    Compiling dependency injection...";
echo "## ---------------------------------------------------------- ##";
php bin/magento setup:di:compile;

echo "## ---------------------------------------------------------- ##";
echo "##    Done!";
echo "## ---------------------------------------------------------- ##";
