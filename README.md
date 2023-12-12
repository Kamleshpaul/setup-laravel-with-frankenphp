# Setup Laravel with FrankenPHP

### Step 1: Clone the Repository

Navigate to the root of your Laravel project and clone the repository:
```sh
git clone https://github.com/Kamleshpaul/setup-laravel-with-frankenphp.git
```


### Step 2: Move the Cloned Repository
Move the cloned repository to a directory named "server":
```sh
mv steup-laravel-with-frankenphp server
```


### Step 3: Make Download Script Executable
Make the download script executable:
```sh
chmod +x server/download.sh
```

### Step 4: Download Composer and FrankenPHP
Run the download script:
```sh
./server/download.sh 
```


This script will download `composer.phar` for Composer and FrankenPHP for `php-cli`, `php`, and `Caddy server`.

### Step 5: Install Composer dependency
To install all the dependency, use the following command:
```sh
 ./server/frankenphp php-cli ./server/composer.phar install
```

### Step 6: Run FrankenPHP Server
To run the FrankenPHP server, use the following command:
```sh
cd server && ./frankenphp run
```

### Step 7: Open Localhost
After running the server, open your web browser and navigate to https://localhost

---

> ### NOTE: It installs PHP 8.3. If you need another version of PHP, you can compile and use FrankenPHP and change the Composer version.

---

