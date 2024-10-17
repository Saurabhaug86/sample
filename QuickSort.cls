public class QuickSort {

    // Main quickSort function
    public static void quickSort(List<Integer> arr, Integer low, Integer high) {
        if (low < high) {
            // Find pivot index, with elements smaller on the left and larger on the right
            Integer pivotIndex = partition(arr, low, high);

            // Recursively sort elements before and after the partition
            quickSort(arr, low, pivotIndex - 1);
            quickSort(arr, pivotIndex + 1, high);
        }
    }

    // Partition function to rearrange elements around the pivot
    private static Integer partition(List<Integer> arr, Integer low, Integer high) {
        Integer pivot = arr[high];  // Taking the last element as the pivot
        Integer i = low - 1;  // Index of the smaller element
        
        // Rearranging elements based on the pivot
        for (Integer j = low; j < high; j++) {
            if (arr[j] <= pivot) {
                i++;
                // Swap arr[i] and arr[j]
                Integer temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }

        // Swap the pivot element with the element at i+1
        Integer temp = arr[i + 1];
        arr[i + 1] = arr[high];
        arr[high] = temp;

        return i + 1;  // Returning the pivot index
    }

    // Test method to showcase the quickSort function
    public static void testSort() {
        List<Integer> data = new List<Integer>{33, 10, 55, 71, 29, 21, 15};
        System.debug('Before Sorting: ' + data);
        quickSort(data, 0, data.size() - 1);
        System.debug('After Sorting: ' + data);
    }
}
