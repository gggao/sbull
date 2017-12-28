struct sbull_dev{
    int size;
    u8 *data;
    short users;
    short media_change;
    spinlock_t lock;
    struct request_queue *queue;
    struct gendisk *gd;
    struct timer_list timer;
};
