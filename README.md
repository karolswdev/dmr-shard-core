# DMR Shard Core

This repository contains the source code\binaries used for building the ``shard-core`` Docker image. This image contains the necessary executables to set up your own version of Dream Masters and have it running in almost no time!

## Setup guide

* ✔️ Clone [the main repository](https:\\github.com\karolswdev\ultima-online-dmr)

* In this example, we will assume we cloned into ``D:\UO\``

* ✔️ **Compile** all your scripts. Use [this docker image](https:\\github.com\karolswdev\dmr-ecompiler) to compile your scripts. You will have to 

    ```bash
        D:\UO\ >docker run -v D:\UO\src\pkg:\pkg -v D:\UO\src\scripts:\scripts dmr-ecompiler
        EScript Compiler v1.13
        Copyright (C) 1993-2016 Eric N. Swanson
        Compiling: \scripts\ai\tamed.src
        ...
    ```

* ⚠️ If you keep actively developing, make sure you **ALWAYS** compile your scripts before testing.

* ✔️ **Generate** your realms. Use [this docker image](https:\\github.com\karolswdev\dmr-uoconvert) You only need to do it once normally. ⚠️ Unless you keep changing your map or statics!

* Generally, you can just point this docker image to your UO folder, it'll pick up the right files this way. Let's assume our UO folder is ``D:\Games\UO``

* In this instance, I also made sure to create a **realm** folder inside my ``D:\UO\src`` folder, since we'll need it later!

    ```bash
    D:\UO >docker run -v D:\Games\UO:\mul -v D:\UO\src\realm:\realm
    329 multi definitions written to multis.cfg
    Reading pol.cfg.
    Reading uoconvert.cfg.
    16381 tile definitions written to tiles.cfg
    Reading pol.cfg.
    Reading uoconvert.cfg.
    16384 landtile definitions written to landtiles.cfg
    ...
    ```

* Go to ``D:\UO\src\config\servers.cfg`` and change the *IP* to **localhost**. You can also change the name, of course!

    ```json
    GameServer
    {
        Name    Dream Masters
        IP      localhost
        Port    5001
    }
    ```


* ✔️ **Host** your instance of DMR

    * Type docker run -v **D:\UO\src\pkg**:*/pol/pkg* -v **D:\UO\src\scripts**:*/pol/scripts* -v **D:\UO\src\data-template.dev**:*/pol/data* -v **D:\UO\src\config**:*/pol/config* -v **D:\UO\src\realm**:*/realm* -p 5001:5001 **ultimadmr\shard-core**

    * You can now log in in your **Ultima Online client** on ``LoginServer=localhost,5001``

    * ✔️ Log-in with admin\admin

    * Enjoy!

    * And contribute to our project!


## Current build status