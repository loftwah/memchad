# Memchad 🕶️

![memchad](https://github.com/user-attachments/assets/184cb980-9af5-457e-9547-08d687da331e)

**Memchad** is a custom fork of `memcached` that runs on the legendary port **42069**. Designed for high-performance caching, it adds a bit of fun and personality to your development environment. With its unique features and playful ASCII art, Memchad is more than just a caching solution—it's a statement.

## Features

- **Port 42069**: A memorable port for a memorable project.
- **ASCII Art and Fun**: Includes a custom welcome message with ASCII art, powered by `figlet`.
- **Easy Integration**: Works just like `memcached`, with an added twist of personality.

## Getting Started

### Prerequisites

To get started with Memchad, you'll need Docker installed on your machine. You can download it from the [official Docker website](https://get.docker.com).

### Build the Image

First, clone the repository and navigate to the project directory. Then build the Docker image:

```bash
git clone https://github.com/loftwah/memchad.git
cd memchad
docker build -t deanoloftwah/memchad:1.1.0 .
```

### Run the Container

Run the Memchad container and expose it on port 42069:

```bash
docker run -p 42069:42069 deanoloftwah/memchad:1.1.0
```

Once the container is running, you'll see a fun welcome message in your terminal, along with the ASCII art you've set up.

### Push to Docker Hub

To share your Memchad image with others, push it to Docker Hub:

```bash
docker push deanoloftwah/memchad:1.1.0
```

## Usage Example

You can integrate Memchad into your applications just like you would with `memcached`. Simply configure your application to connect to port 42069, and enjoy the added flair that Memchad brings to the table.

### Example Configuration in a Rails App

```ruby
# config/environments/production.rb
config.cache_store = :mem_cache_store, "memchad:42069",
  { namespace: 'myapp', expires_in: 1.day, compress: true }
```

## Contributing

Contributions are welcome! If you have ideas to make Memchad even more fun or functional, feel free to fork the repository, make your changes, and submit a pull request.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is open-source and free to use, modify, and distribute under the MIT License.

## Acknowledgments

- Inspired by the need for more fun in the world of development tools.
- Thanks to the creators of `memcached` for the solid foundation.
