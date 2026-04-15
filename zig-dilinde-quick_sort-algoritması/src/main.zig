const std = @import("std");
const Io = std.Io;

const zig_quick_sort_deneme = @import("zig_quick_sort_deneme");

pub fn main() !void 
{
   var arr=[_]i64{3,7,2,12,10,8,31,78,15,55,14,2,55,103,78,67,43,1,1,-1,1,1,-2};
   try quick_sort(&arr,0,arr.len-1);
   for(0..arr.len)|sayi|
   {
      if(sayi<arr.len-1)
      {
         std.debug.print("{d}, ",.{arr[sayi]});
      }
      if(sayi==arr.len-1)
      {
         std.debug.print("{d} ",.{arr[sayi]});
      }

      
   }
   std.debug.print("\n",.{});
}

pub fn quick_sort(arr:[]i64, indexStart:usize,indexEnd:usize) !void 
{
   if(indexStart>=indexEnd) return;
   //std.debug.print("Length of the array is: {d}\n",.{length});
   const pivot:usize=indexEnd;
   var i:usize=indexStart;
   var j:usize=indexStart;

  while(true)
  {
        if(arr[i]<arr[pivot] and i<pivot)
        {
            
            const temp:i64=arr[i];
            arr[i]=arr[j];
            arr[j]=temp;
            j+=1;
        }
        
        if(i>=pivot)
        {
           
           const temp:i64=arr[j];
           arr[j]=arr[pivot];
           arr[pivot]=temp;
           break;
        }

        i+=1;
  }

  if(j>0)
  {
      try quick_sort(arr,indexStart,j-1);
  }
  if(j+1<pivot)
  {
      try quick_sort(arr,j+1,pivot);

  }
  

}


    