using System;

class Program
{
    static void Main()
    {
        int n = int.Parse(Console.ReadLine());
        int k = int.Parse(Console.ReadLine());

        int[] steps = new int[n];

        string[] input = Console.ReadLine().Split();

        for (int i = 0; i < n; i++)
        {
            steps[i] = int.Parse(input[i]);
        }

        int sum = 0;

        for (int i = 0; i < k; i++)
        {
            sum += steps[i];
        }

        int max = sum;

        for (int i = k; i < n; i++)
        {
            sum += steps[i] - steps[i - k];

            if (sum > max)
            {
                max = sum;
            }
        }

        Console.WriteLine(max);
    }
}