# Хорасанджян Левон, БПИ 218

# Объявление функции 1.
function convertFromDecimalToBinary {
# Отрицательное число.
if [ $1 -lt 0 ] ; then
# Требуем положительное число или ноль.
    echo "Number must be positive or zero!"
    return
fi

echo -n "Result: "
echo "obase=2;$1" | bc
}

# Объявление функции 2.
function getFirst100ElementsPresentation {
num=0

# Запускаем цикл для чисел от 0 до 99 включительно.
while [ $num -lt 100 ]
do
echo -n "Result for "
echo -n $num
echo -n ": "
echo "obase=2;$num" | bc
((num++))
done
}

# Выбираем одну из двух функций.
function selectMode {
if [ $1 -eq 1 ] ; then
# Режим 1.
    echo -n "Type number to convert: "
    read num_convert
    convertFromDecimalToBinary $num_convert
elif [ $1 -eq 2 ] ; then
# Режим 2.
    getFirst100ElementsPresentation
else
    echo "Incorrect code!"
fi
}

echo "Mode 1 - convert from decimal to binary"
echo "Mode 2 - get first 100 elements presentation"

echo -n "Select mode (1 or 2): "
read code

selectMode $code
