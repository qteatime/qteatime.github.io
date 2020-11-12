---
layout: article
title: "Katelog #4: Native binaries and more"
---

[The experimental release for May 2023 is here!](https://github.com/qteatime/kate/releases/tag/v0.23.5-rc1). You can try it out by going to <https://kate.qteati.me/> (use `Applications -> About Kate` to update!) or by trying one of the native binaries that will start being published as of this version.

> **NOTE:**<br>
> The native binaries are not yet sandboxed, however (the Kate kernel and cartridges are sandboxed as usual).

![](/files/2023/05/kate-storage.png)

The two biggest changes in this version were improved input support (there are now screens to configure keyboard and gamepad inputs, some minor quality-of-life improvements to touch controls, etc), and a completely rewritten storage API.

If you're curious about why the storage API was rewritten, there is a [very long technical document](https://github.com/qteatime/kate/blob/main/docs/design/0101-object-store.md) with all the details, but it boils down to two main things:

- The previous API was not very grounded. It was an experiment, and it made it hard to reason about its safety and privacy properties. We need to be able to understand those to guarantee to players that their data can't be tampered with, corrupted, or accessed by a different application.

- The lack of versioning made it _very easy_ to corrupt data on upgrades. That's the same with regular file systems, but that doesn't mean 60 years old file system designs are a good idea.

The new API has a very small formal semantics, and the whole API is derived from those simple operations. This makes it possible to both understand the safety implications of the API and check these safety properties. As Kate aims to be very safety and privacy conscious, these are good things to have.

It also has completely isolated versions. Isolated versions make it possible for users to upgrade cartridges without having to worry about version incompatibilities (or accidental corruption). If they upgrade, and something doesn't work as they expected, they can downgrade to the older version and have the cartridge's data in the exact same state as before the upgrade happened.

So, what's next in the horizon for Kate? Well, the focus area of the next release will be finishing the storage updates. Storage migrations are not implemented yet, and an IndexedDB bridge is long overdue. With this completed, support for Ren'Py web export will be at almost 100% — currently Ren'Py cartridges cannot save data, so that limits releasing longer VNs.
