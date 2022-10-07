let singleton = (item) => {
    return [item];
}

let isNull = (array) => {
    if(length(array)) return false
    else return true
}  

let length = (array) => {
  let counter = 0;
  array.forEach(element => counter++)
  return counter;
}

let snoc = (arr, elem) => {
  arr[length] = elem;
  return arr
}
