# Setup Laravel with FrankenPHP

### Step 1: Clone the Repository

Navigate to the root of your Laravel project and clone the repository:
```sh
git clone https://github.com/Kamleshpaul/steup-laravel-with-frankenphp.git
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
For Mac:
Run the download script for Mac:
```sh
./server/download.sh mac
```

For Linux:
Run the download script for Linux:
```sh
./server/download.sh linux
```

This script will download `composer.phar` for Composer and FrankenPHP for `php-cli`, `php`, and `Caddy server`.

### Step 5: Run FrankenPHP Server
To run the FrankenPHP server, use the following command:
```sh
./server/frankenphp run
```

### Step 6: Open Localhost
After running the server, open your web browser and navigate to https://localhost

---

