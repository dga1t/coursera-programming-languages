fun sum_list (xs : int list) =
    if null xs
    then 0
    else hd xs + sum_list(tl xs)

fun countdown (x : int) = (* [7,6,5,4,3,2,1] *)
    if x=0
    then []
    else x :: countdown(x-1)

fun append (xs : int list, ys : int list) =
    if null xs
    then ys
    else (hd xs) :: append((tl xs), ys)
			  
(* (int list) * (int list) -> int list *)

			  
(* functions over pairs of lists *)

fun sum_pair_list (xs : (int * int) list) =
    if null xs
    then 0
    else #1 (hd xs) + #2 (hd xs) + sum_pair_list(tl xs)

(* sum_pair_list [(3,4),(5,6)] *)
			  

						
(* ------------------- homework week 1 ---------------------- *)

						

fun is_older (date1 : int * int * int, date2 : int * int * int) =
    let
	val y1 = #1 date1
	val m1 = #2 date1
	val d1 = #3 date1
	val y2 = #1 date2
	val m2 = #2 date2
	val d2 = #3 date2
    in
	y1 < y2 orelse (y1 = y2 andalso m1 < m2) orelse (y1 = y2 andalso m1 = m2 andalso d1 < d2)
    end


fun number_in_month (dates : (int * int * int) list, month : int) =
    if null dates
    then 0
    else if (#2 hd dates = month)
    then number_in_month(tl dates, month) + 1
    else number_in_month(tl dates, month)


fun number_in_months (dates : (int * int * int) list, months : int list) =
    if null months
    then 0
    else number_in_month(dates, hd months) + number_in_months(dates, (tl months))
