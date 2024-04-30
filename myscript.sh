#!/bin/bash
# Проверка количества аргументов
if [ $# -ne 2 ]; then
    echo "Usage: $0 <input_directory> <output_directory>"
    exit 1
fi

# Проверка существования входной директории
if [ ! -d $1 ]; then
    echo "Input directory does not exist"
    exit 1
fi

# Проверка существования выходной директории
if [ ! -d $2 ]; then
    echo "Output directory does not exist"
    exit 1
fi

# Копирование файлов
find $1 -type f -exec cp {} $2 \;
echo "Files copied successfully"