#include "filter.h"

//coefficients

// fs = 100, fc = 10
// 1st order
const float b0_bu1_10=0.24523727525278557; 
const float b1_bu1_10=0.24523727525278557; 
const float a1_bu1_10=-0.5095254494944289;

// 2nd order
const float b0_bu2_10=0.09549150281252626; 
const float b1_bu2_10=0.19098300562505252; 
const float b2_bu2_10=0.09549150281252626; 
const float a1_bu2_10=-1.2024070509724416; 
const float a2_bu2_10=0.5843730622225466;

// fs = 100, fc = 5
// 1st order
const float b0_bu1_5=0.13672873599731955;
const float b1_bu1_5=0.13672873599731955;
const float a1_bu1_5=-0.726542528005361;

// 2nd order
const float b0_bu2_5=0.02447174185242321;
const float b1_bu2_5=0.04894348370484642;
const float b2_bu2_5=0.02447174185242321;
const float a1_bu2_5=-1.6836050203658963;
const float a2_bu2_5=0.7814919877755896;

float bu_filter_1st_5Hz(float x, float x1, float y1)
{
    float y = b0_bu1_5*x + b1_bu1_5*x1 - a1_bu1_5*y1;
    return y;
}

float bu_filter_2nd_5Hz(float x, float x1, float x2, float y1, float y2)
{
		float y = b0_bu2_5*x + b1_bu2_5*x1 + b2_bu2_5*x2 - a1_bu2_5*y1 - a2_bu2_5*y2;
		return y;
}

float bu_filter_1st_10Hz(float x, float x1, float y1)
{
    float y = b0_bu1_10*x + b1_bu1_10*x1 - a1_bu1_10*y1;
    return y;
}

float bu_filter_2nd_10Hz(float x, float x1, float x2, float y1, float y2)
{
		float y = b0_bu2_10*x + b1_bu2_10*x1 + b2_bu2_10*x2 - a1_bu2_10*y1 - a2_bu2_10*y2;
		return y;
}


