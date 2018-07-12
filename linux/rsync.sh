#!/bin/bash

rsync -avh /path/to/file/or/dir user@host:/path/to/dir/or/file
rsync -avh user@host:/path/to/dir/or/file /path/to/file/or/dir

rsync --delete source/ dest/
# it won't delete if some error encounted, to revolve, use:
rsync --delete --ignore-errors source/ dest/

# exclude
> '/dir/ means exclude the root folder /dir, here root refer to the source folder'
> '/dir/* means get the root folder /dir but not the contents'
> 'dir/ means exlcude any folder anywhere whose name contains dir/'


# hardlink: -H
the -a option will not copy hardlink by default, because finding multiply-linked
files is expensive. To do that, explicitly specify -H.
