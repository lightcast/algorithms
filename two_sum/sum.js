//Given numbers = [0, 2, 11, 19, 90], sum = 21,
//Because numbers[1] + numbers[3] = 2 + 19 = 21,
//return [1, 3].

//let arr = [1, 4, 6, 8, 9];

// Given an array of integers, return indices of the two numbers such that they add up to a specific target.

//You may assume that each input would have exactly one solution, and you may not use the same element twice.

//Given nums = [2, 7, 11, 15], target = 9,

//Because nums[0] + nums[1] = 2 + 7 = 9,
//return [0, 1].





//Given a sorted array of integers (with possibly duplicates), is it possible to find a pair of integers from that array that sum up to a given sum? If so, return indices of the two integers or an empty array if not. The solution is not necessarily unique.


/*

Given numbers = [0, 2, 11, 19, 90], sum = 21,
Because numbers[1] + numbers[3] = 2 + 19 = 21,
return [1, 3].

*/

let arr = [0, 2, 11, 19, 90];

const findTwoSum = (arr, sum) =>{
  let result = [];
  arr.forEach((e, i)=> {
     for(let a = i + 1; a < arr.length; a++){
      if(e + arr[a] == sum){
        result.push(i, a);
      }
     }
  });
  return result;
}

//console.log(findTwoSum(arr, 21));
//console.log(findTwoSum([2, 7, 11, 15], 9));


function twoSumHash(arr, sum){
  let obj = {};
  let a = [];
  for(var i = 0; i < arr.length; i++){
    if(arr[i] in obj){
      a.push(obj[arr[i]]);
      a.push({position:i, value:arr[i]});
    }else{
      obj[sum - arr[i]] = {position:i, value:arr[i]};
    }
  }

  return a;
}


console.log(twoSumHash(arr, 21));

function twoSum(arr, target){
  let i = 0;
  let j = arr.length - 1;
  let result = [];
  while(i <= j){
    if(arr[i] + arr[j] == target){
      console.log(arr[i], arr[j]);
      result.push({position:i, value:arr[i]});
      result.push({position:j, value:arr[j]});
      return result;
    }else if(arr[i] + arr[j] < target){
      i += 1;
    }else{
      j -=1;
    }

  }
   return result;
}

console.log(twoSum(arr, 21));
