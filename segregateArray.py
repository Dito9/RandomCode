def segregateArray(array):
    left_index=0
    right_index=len(array)-1
    #print(array[0])
    #print(left_index)
    #print(right_index)
    
    #inspect every element
    while left_index< len(array):
        print(left_index)
        left_number=array[left_index]
        right_number=array[right_index]        
        
        #when the indexes meet the array has been ordered fully
        if (left_index==right_index):
            return array
        
        #if the numer is odd it should be on the right part of the array
        if (left_number%2==1):
            #in_place_variable=right_number
            array[right_index]=left_number
            array[left_index]=right_number
            #the right part is now correct
            right_index=right_index-1
            #the inspected number on the left is not necessarily okay, we must re-inspect
            left_index=left_index-1
            
        left_index=left_index+1  
