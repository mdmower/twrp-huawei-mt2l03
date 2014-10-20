**TWRP - Huawei Ascend Mate 2**

This is a recovery-only device tree for the Huawei Ascend Mate 2 (mt2l03).

Work-in-progress! Known issues:

1. MTP doesn't work (inotify_add_watch is complaining about an invalid argument)
2. Off-mode charging doesn't work

**Quick build instructions:**

    . build/envsetup.sh
    lunch cm_mt2l03-eng
    mka recoveryimage
