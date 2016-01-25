/**
 * @file
 *
 * @data 23 нояб. 2015 г.
 * @author: Anton Bondarev
 */

#ifndef SRC_FS_FUSE_FUSE_MODULE_NONE_H_
#define SRC_FS_FUSE_FUSE_MODULE_NONE_H_

struct fuse_module;

extern struct fuse_module *fuse_module_lookup(char *fuse_type);

extern int fuse_module_mount(struct fuse_module *fm, char *dev, char *dest);

extern int fuse_module_umount(struct fuse_module *fm);

#endif /* SRC_FS_FUSE_FUSE_MODULE_NONE_H_ */
