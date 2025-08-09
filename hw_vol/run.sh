docker build -t hw_vol_image .

if [ $# -lt 1 ]; then
  echo "使用方法: $0 <源文件名.cpp> [程序参数...]"
  exit 1
fi

SRC_FILE=$1
shift

docker run --rm -v "$(pwd)/../src:/app" hw_vol_image sh -c "g++ $SRC_FILE -o ${SRC_FILE%.cpp} && ./${SRC_FILE%.cpp} \"$@\""# Add your commands here
