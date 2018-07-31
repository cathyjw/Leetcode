int* twoSum(int* nums, int numsSize, int target) {
    int *indices = (int*)malloc(2*sizeof(int));
    for (int i = 0; i < numsSize; i++){
        int temp=target-nums[i];
        for (int j = 0; j < numsSize; j++){
            if (nums[j]==temp && i!=j){
                indices[0]=i;
                indices[1]=j;
                return indices;
            }
        }
    }
    return indices;
}