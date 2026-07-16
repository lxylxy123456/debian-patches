CFLAGS := -Wall $(shell pkg-config fuse3 --cflags)
LDFLAGS := $(shell pkg-config fuse3 --libs)

targets = cuse cuse_client hello hello_ll \
          invalidate_path ioctl ioctl_client \
          notify_inval_entry notify_inval_inode notify_store_retrieve \
          null passthrough passthrough_fh passthrough_ll \
          poll poll_client printcap

%: %.c
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

all: $(targets)

clean:
	rm -f *.o
	rm -f $(targets)
