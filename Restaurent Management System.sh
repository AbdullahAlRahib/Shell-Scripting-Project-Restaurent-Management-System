#!/bin/bash
echo "   =============WELCOME TO FAST FOOD RESTAURANT=============="
echo "   =========================================================="
echo "   |                          MENU                          |"
echo "   =========================================================="
echo "   |FOOD NAME------------SIZE--------------------------Price|"
echo "   __________________________________________________________"

echo "   1. Burger.............200g/300g................180tk/240tk"
echo "   2. Pizza..............8''/10''.................220tK/280tK"
echo "   3. French Fry.........300g............................70tK"
echo "   4. Chicken Fry........3 piece........................150tk"
echo "   5. Chicken wings......5 piece........................120tk"
echo "   6. Thai Soup..........Per person.....................120tk"
echo "   7. Wonthon............3 piece........................100tk"
echo "   8. Coke...............250ml...........................30tk"
echo "   9. Coffee.............Per cup.........................65tk"
echo "   __________________________________________________________"
echo " "



echo "   How many Food Item Do you want to Order: "
read n



for((i=1;i<n+1;i++))
do
    item[i]=$i
    echo "   What is your order item no $((item[i])) : "
    read m
    choice[i]=$m
    if(($((choice[i])) == 1))
    then
    echo "   which Size burger you want?"
    echo "   1.200g 2.300g "
    read b
    burger_size[i]=$b
        if(($((burger_size[i])) == 1))
        then
        echo "   How Many burger Do you you want?"
        read q
        burger_quantity[i]=$q
        price[i]=`expr $((burger_quantity[i])) \* 180`
        elif(($((burger_size[i])) == 2))
        then
        echo "   How Many burger Do you you want?"
        read q
        burger_quantity[i]=$q
        price[i]=`expr $((burger_quantity[i])) \* 240`
        fi
    elif(($((choice[i])) == 2))
    then
    echo "   which Size pizza you want?"
    echo "   1.8''   2.10'' "
    read p
    pizza_size[i]=$p
        if(($((pizza_size[i])) == 1))
        then
        echo "   How Many pizza Do you you want? "
        read q1
        pizza_quantity[i]=q1
        price[i]=`expr $((pizza_quantity[i])) \* 180`
        elif(($((pizza_size[i])) == 2))
        then
        echo "   How Many pizza Do you you want? "
        read q1
        pizza_quantity[i]=q1
        price[i]=`expr $((pizza_quantity[i])) \* 240`
        fi
    elif(($((choice[i])) == 3))
    then
        echo "   How Many French Fry Do you you want? "
        read q2
        ff_quantity[i]=q2
        price[i]=`expr $((ff_quantity[i])) \* 70`
    elif(($((choice[i])) == 4))
    then
        echo "   How Many Chicken Fry Do you you want? "
        read q3
        cf_quantity[i]=q3
        price[i]=`expr $((cf_quantity[i])) \* 150`
    elif(($((choice[i])) == 5))
    then
        echo "   How Many Chicken wings Do you you want? "
        read q4
        cw_quantity[i]=q4
        price[i]=`expr $((cw_quantity[i])) \* 120`
    elif(($((choice[i])) == 6))
    then
        echo "   How Many Thai Soup Do you you want? "
        read q5
        ts_quantity[i]=q5
        price[i]=`expr $((ts_quantity[i])) \* 120`
    elif(($((choice[i])) == 7))
    then
        echo "   How Many Wonthon Do you you want? "
        read q6
        w_quantity[i]=q6
        price[i]=`expr $((w_quantity[i])) \* 100`
    elif(($((choice[i])) == 8))
    then
        echo "   How Many Coke Do you you want? "
        read q7
        coke_quantity[i]=q7
        price[i]=`expr $((coke_quantity[i])) \* 30`
    elif(($((choice[i])) == 9))
    then
        echo "   How Many Cup coffee Do you you want? "
        read q8
        coffee_quantity[i]=q8
        price[i]=`expr $((coffee_quantity[i])) \* 240`
    fi
done

echo " "
echo "   ========================================================="
echo "   |                      ORDERD ITEM                      |"
echo "   ========================================================="




for((i=1;i<n+1;i++))
do
    if(($((choice[i]))==1))
    then
            if(($((burger_size[i])) == 1))
            then
            echo "   Item No.  $((item[i])) : 200g size burger      $((burger_quantity[i]))  X  180    = $((price[i])) "
            elif(($((burger_size[i])) == 2))
            then
            echo "   Item No.  $((item[i])) : 300g size burger      $((burger_quantity[i]))  X  240    = $((price[i])) "
            fi

    elif(($((choice[i]))==2))
    then
            if(($((pizza_size[i])) == 1))
            then
            echo "   Item No.  $((item[i])) : 8'' size pizza        $((pizza_quantity[i]))  X  180    = $((price[i]))  "
            elif(($((pizza_size[i])) == 2))
            then
            echo "   Item No.  $((item[i])) : 10'' size pizza       $((pizza_quantity[i]))  X  240    = $((price[i]))  "
            fi
    elif(($((choice[i]))==3))
    then
    echo "   Item No.  $((item[i])) : 300g French Fry       $((ff_quantity[i]))  X  70     = $((price[i]))  "
    elif(($((choice[i]))==4))
    then
    echo "   Item No.  $((item[i])) : 3 piece Chicken Fry   $((cf_quantity[i]))  X  150    = $((price[i]))  "
    elif(($((choice[i]))==5))
    then
    echo "   Item No.  $((item[i])) : 5 piece Chicken wings $((cw_quantity[i]))  X  120    = $((price[i]))  "
    elif(($((choice[i]))==6))
    then
    echo "   Item No.  $((item[i])) : Thai Soup             $((ts_quantity[i]))  X  120    = $((price[i]))  "
    elif(($((choice[i]))==7))
    then
    echo "   Item No.  $((item[i])) : Wonthon               $((w_quantity[i]))  X  100    = $((price[i]))  "
    elif(($((choice[i]))==8))
    then
    echo "   Item No.  $((item[i])) : 250ml Coke            $((coke_quantity[i]))  X  30     = $((price[i]))  "
    elif(($((choice[i]))==9))
    then
    echo "   Item No.  $((item[i])) : Coffee                $((coffee_quantity[i]))  X  65     = $((price[i]))  "
    fi
done

echo "   _________________________________________________________"


price=0
for((i=1;i<n+1;i++))
do
   price=$((price))+$((price[i]))
done

echo "   Totall Bill                                      =$((price)) TK "









