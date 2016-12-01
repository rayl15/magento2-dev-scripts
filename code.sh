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

## Compile 
echo "## ---------------------------------------------------------- ##";
echo "##    Compiling DI configuration and code generation...";
echo "## ---------------------------------------------------------- ##";
php bin/magento setup:di:compile;

echo "## ---------------------------------------------------------- ##";
echo "##    Done!";
echo "## ---------------------------------------------------------- ##";
