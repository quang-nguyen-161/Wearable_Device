#ifndef __FILTER_H__
#define __FILTER_H__
#include <stdint.h>
float bu_filter_1st_5Hz(float x, float x1, float y1);
float bu_filter_1st_10Hz(float x, float x1, float y1);
float bu_filter_2nd_5Hz(float x, float x1, float x2, float y1, float y2);
float bu_filter_2nd_10Hz(float x, float x1, float x2, float y1, float y2);


#endif