//Create list of ints from 1 to 5, Haskell equivalent [1..5]
function arrFunc(a, b){
    let arr = [];
    for (let i = a; i<=b; i++) {
        arr.push(i);
    }
    return arr;    
}

function applicatorFunc(inpFunc, s){
    const arr = inpFunc;
    if(s=='s'){
        return arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
    }
    else if (s === 'a') {        
        const sum = arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        return sum / arr.length;
    }else {
        return "Invalid option! Use 's' for sum or 'a' for average.";
    }
}

const a = 5; 
const b = 8; 
const rangeList = arrFunc(a, b); 

const resultSum = applicatorFunc(rangeList, 's'); 
const resultAvg = applicatorFunc(rangeList, 'a'); 

console.log(`Sum = ${resultSum}`);
console.log(`Average = ${resultAvg}`);