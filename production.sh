
## Set mode to production
echo "## ---------------------------------------------------------- ##";
echo "##    Switching mode to production...";
echo "## ---------------------------------------------------------- ##";
php bin/magento deploy:mode:set production;

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

## Clear all static view files
echo "## ---------------------------------------------------------- ##";
echo "##    Clearing existing static view files...";
echo "## ---------------------------------------------------------- ##";
rm -rf var/view_preprocessed pub/static;

## Deploy static view files
echo "## ---------------------------------------------------------- ##";
echo "##    Deploying new static view files...";
echo "## ---------------------------------------------------------- ##";
php bin/magento setup:static-content:deploy;

## Reindex store data
echo "## ---------------------------------------------------------- ##";
echo "##    Reindexing store data...";
echo "## ---------------------------------------------------------- ##";
php bin/magento indexer:reindex;

## Flush the cache
echo "## ---------------------------------------------------------- ##";
echo "##    Flushing the cache...";
echo "## ---------------------------------------------------------- ##";
php bin/magento cache:flush;

echo "## ---------------------------------------------------------- ##";
echo "##    Done! Good luck :)";
echo "## ---------------------------------------------------------- ##";
