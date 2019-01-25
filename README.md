# raylib-scm

Chiken Scheme bindings for Raylib Game Library (https://www.raylib.com/, https://github.com/raysan5/raylib).

[![License](https://img.shields.io/github/license/yashrk/raylib-scm.svg?style=social)](LICENSE)

## DISCLAIMER

I'm just researching features of Raylib and Chicken Scheme. These bindings are incomplete, probably inefficient and not idiomatic.  Use this bindings at your own risk. I even haven't any intent to long-term development of this code.

But, anyway, some work writing glue code is done and may be useful to somebody else.

## LICENSE WARNING

Please note: although Raylib itself is licensed by BSD-like license, this library is licensed by GNU Affero Public License (https://www.gnu.org/licenses/agpl-3.0.en.html). You cannot use it in proprietary projects: in my very strong opinion, code once open-sourced shall be open-source forever.

## Installation

In the root directory of the project:
```
sudo chicken-install
```

## Usage

See `examples` directory.

## ToDo

 - [ ] Implement enough bindings to rewrite in Scheme all Raylib examples
 - [ ] Rewrite in Scheme all Raylib examples
 - [ ] Allocate C objects in memory managed by Chicken: it's probably much more efficient than `malloc()`
 - [ ] Make API and deployment files more idiomatic for Chicken Scheme.
 - [ ] Write something funny and/or useful using this bindings.

## Examples already implemented

### core

![[basic window](https://github.com/yashrk/raylib-scm/blob/master/examples/core/3d_camera_first_person/3d_camera_first_person.png)](https://github.com/yashrk/raylib-scm/tree/master/examples/core/basic_window)

![[input keys](https://github.com/yashrk/raylib-scm/blob/master/examples/core/input_keys/input_keys.png)](https://github.com/yashrk/raylib-scm/tree/master/examples/core/input_keys/)

![[input mouse](https://github.com/yashrk/raylib-scm/blob/master/examples/core/input_mouse/input_mouse.png)](https://github.com/yashrk/raylib-scm/tree/master/examples/core/input_mouse/)

![[mouse wheel](https://github.com/yashrk/raylib-scm/blob/master/examples/core/mouse_wheel/mouse_wheel.png)](https://github.com/yashrk/raylib-scm/tree/master/examples/core/mouse_wheel/)

![[random values](https://github.com/yashrk/raylib-scm/blob/master/examples/core/random_values/random_values.png)](https://github.com/yashrk/raylib-scm/tree/master/examples/core/random_values/)

![[color select](https://github.com/yashrk/raylib-scm/blob/master/examples/core/color_select/color_select.png)](https://github.com/yashrk/raylib-scm/tree/master/examples/core/color_select/)

![[3d mode](https://github.com/yashrk/raylib-scm/blob/master/examples/core/3d_mode/3d_mode.png)](https://github.com/yashrk/raylib-scm/tree/master/examples/core/3d_mode/)

![[3d picking](https://github.com/yashrk/raylib-scm/blob/master/examples/core/3d_picking/3d_picking.png)](https://github.com/yashrk/raylib-scm/tree/master/examples/core/3d_picking/)

![[3d camera free](https://github.com/yashrk/raylib-scm/blob/master/examples/core/3d_camera_free/3d_camera_free.png)](https://github.com/yashrk/raylib-scm/tree/master/examples/core/3d_camera_free/)

![[3d camera first person](https://github.com/yashrk/raylib-scm/blob/master/examples/core/3d_camera_first_person/3d_camera_first_person.png)](https://github.com/yashrk/raylib-scm/tree/master/examples/core/3d_camera_first_person/)

### textures

![[particles blending](https://github.com/yashrk/raylib-scm/blob/master/examples/textures/particles_blending/particles_blending.png)](https://github.com/yashrk/raylib-scm/tree/master/examples/textures/particles_blending/)

### models

![[obj loading](https://github.com/yashrk/raylib-scm/blob/master/examples/models/obj_loading/obj_loading.png)](https://github.com/yashrk/raylib-scm/tree/master/examples/models/obj_loading/)

![[heightmap](https://github.com/yashrk/raylib-scm/blob/master/examples/models/heightmap/heightmap.png)](https://github.com/yashrk/raylib-scm/tree/master/examples/models/heightmap/)

[skybox](https://github.com/yashrk/raylib-scm/tree/master/examples/models/skybox/)

![[yaw pitch roll](https://github.com/yashrk/raylib-scm/blob/master/examples/models/yaw_pitch_roll/yaw_pitch_roll.png)](https://github.com/yashrk/raylib-scm/tree/master/examples/models/yaw_pitch_roll/)
