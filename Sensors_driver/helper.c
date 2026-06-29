#include "helper.h"

void rb_push(rb_typedef_t *rb, int32_t val)
{
    rb->buffer[rb->head] = val;
		// wrap back to 0 at end
    rb->head = (rb->head + 1) % RB_MAX_SIZE;  
};

void rb_init(rb_typedef_t *rb)
{
    rb->head = 0;
    memset(rb->buffer, 0, sizeof(rb->buffer));
};



