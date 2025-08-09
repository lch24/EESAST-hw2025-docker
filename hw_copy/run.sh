
echo "开始构建 Docker 镜像..."
docker build -t hw_copy_image -f hw_copy/Dockerfile . 

echo "运行 add 程序，计算 10 + 20..."
docker run --rm hw_copy_image /app/add 10 20 

echo "运行 mul 程序，计算 5 * 8..."
docker run --rm hw_copy_image /app/mul 5 8 # Add your commands here
