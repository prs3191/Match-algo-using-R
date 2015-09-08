# Match-algo-using-R
Match based on phonetic codes

##Description
A simple matching algorithm using grep,amatch [for string match] & phonetic [generate phonetic code using 'soundex'] methods in R.</br>
The main objective is to *find missing ID of a customer using phonetic code generated and zip*.

##Sample of data frames used in R code
* **Data Frame :** *all* 
 

 | can       | customer        | zip        | Phonetic code (generated in line 23) |
 | ----------|-----------------|-----------|--------------------------------------|
 |10000001|	AAA|	19001|	A000|
 |10000002|	AAB|	19001|	A100|
 |10000003|	AAC|	19007|	A200|
 |10000004|	BBB|	19008|	B000|
 |10000005|	BBD|	19007|	B300|

* **Data Frame :** *tomap* 
 

 | can       | customer        | zip        | Phonetic code (generated in line 20) |
 | ----------|-----------------|------------|--------------------------------------|
 |0|	AAC|	19007|	A200|
 |0|	AAA|	19001|	A000|
 |0|	BBB|	19008|	B000|
 |0|	AAB|	19001|	A100|


##Output based on zip & Phonetic code match
* **Data Frame :** *tomap* 
 
 | can       | customer        | zip        | Phonetic code (generated in line 20) |
 | ----------|-----------------|------------|--------------------------------------|
 |**10000003**|	AAC|	19007|	A200|
 |**10000001**|	AAA|	19001|	A000|
 |**10000004**|	BBB|	19008|	B000|
 |**10000002**|	AAB|	19001|	A100|

