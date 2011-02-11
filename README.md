This is a killer build of nginx including most of the good modules out there

It has been patched a little to support luajit-beta-6 and I have made a batteries included
luajit installer for max OSX you can find here:

https://gist.github.com/807334

Make sure to install Cmake first(read the top of that gist)

You will end up with a 'super-nginx' directory at the top level of this git repo
that is super badass.

Thanks mosly to the work of agentzh and chaoslawful for their killer nginx modules

This pretty much makes nginx itself a killer app server that you could write async applications
with in lua that run inside nginx in coroutines never blocking the nginx event loop

this is super powerfull stuff and definitely deserves some blog posts which I will have forthcoming at my blog: http://brainspl.at