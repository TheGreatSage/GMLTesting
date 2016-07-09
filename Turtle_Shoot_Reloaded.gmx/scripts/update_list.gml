var strin, length;
list=argument0;
strin=argument1;
length=argument2;

var i;

for (i=length-1;i>-1;i--) {
    list[i+1]=list[i];
}

list[0]=strin;
