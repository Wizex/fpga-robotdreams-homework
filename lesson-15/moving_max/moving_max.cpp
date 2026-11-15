#include <climits>
#include "moving_max.h"

/* Ковзний максимум: out_data[n] = найбільше з останніх WINDOW відліків,
   разом із поточним відліком n. */
void moving_max(int in_data[N_SAMPLES], int out_data[N_SAMPLES])
{
    int window[WINDOW];

INIT_LOOP:
    for (int k = 0; k < WINDOW; k++)
    {
        window[k] = INT_MIN;
    }

MAIN_LOOP:
    for (int n = 0; n < N_SAMPLES; n++)
    {
#pragma HLS PIPELINE II=1
SHIFT_LOOP:
        for (int k = WINDOW - 1; k > 0; k--)
        {
            window[k] = window[k - 1];
        }
        window[0] = in_data[n];

        int max = window[0];
MAX_LOOP:
        for (int i = 1; i < WINDOW; i++) 
        {
            if (window[i] > max) 
            {
                max = window[i];
            }
        }
        out_data[n] = max;
    }
}