(import chicken scheme foreign foreigners lolevel)
(use foreigners lolevel)

(foreign-declare "#include <raylib.h>")

(define-foreign-enum-type (blend-mode int)
  (blend-mode->int int->blend-mode)
  ((blend-alpha blend-mode/blend-alpha) BLEND_ALPHA)
  ((blend-additive blend-mode/blend-additive) BLEND_ADDITIVE)
  ((blend-multiplied blend-mode/blend-multiplied) BLEND_MULTIPLIED))

(define-foreign-enum-type (camera-type int)
  (camera-type->int int->camera-type)
  ((perspective camera-type/perspective)   CAMERA_PERSPECTIVE)
  ((orthographic camera-type/orthographic) CAMERA_ORTHOGRAPHIC))

(define-foreign-enum-type (camera-mode int)
  (camera-mode->int int->camera-mode)
  ((camera-custom camera-mode/camera-custom) CAMERA_CUSTOM)
  ((camera-free camera-mode/camera-free) CAMERA_FREE)
  ((camera-orbital camera-mode/camera-orbital) CAMERA_ORBITAL)
  ((camera-first-person camera-mode/camera-first-person) CAMERA_FIRST_PERSON)
  ((camera-third-person camera-mode/camera-third-person) CAMERA_THIRD_PERSON))

(define-foreign-enum-type (keyboard-keys int)
  (keyboard-keys->int int->keyboard-keys)
  ((key-apostrophe keyboard-keys/key-apostrophe) KEY_APOSTROPHE)
  ((key-comma keyboard-keys/key-comma) KEY_COMMA)
  ((key-minus keyboard-keys/key-minus) KEY_MINUS)
  ((key-period keyboard-keys/key-period) KEY_PERIOD)
  ((key-slash keyboard-keys/key-slash) KEY_SLASH)
  ((key-zero keyboard-keys/key-zero) KEY_ZERO)
  ((key-one keyboard-keys/key-one) KEY_ONE)
  ((key-two keyboard-keys/key-two) KEY_TWO)
  ((key-three keyboard-keys/key-three) KEY_THREE)
  ((key-four keyboard-keys/key-four) KEY_FOUR)
  ((key-five keyboard-keys/key-five) KEY_FIVE)
  ((key-six keyboard-keys/key-six) KEY_SIX)
  ((key-seven keyboard-keys/key-seven) KEY_SEVEN)
  ((key-eight keyboard-keys/key-eight) KEY_EIGHT)
  ((key-nine keyboard-keys/key-nine) KEY_NINE)
  ((key-semicolon keyboard-keys/key-semicolon) KEY_SEMICOLON)
  ((key-equal keyboard-keys/key-equal) KEY_EQUAL)
  ((key-a keyboard-keys/key-a) KEY_A)
  ((key-b keyboard-keys/key-b) KEY_B)
  ((key-c keyboard-keys/key-c) KEY_C)
  ((key-d keyboard-keys/key-d) KEY_D)
  ((key-e keyboard-keys/key-e) KEY_E)
  ((key-f keyboard-keys/key-f) KEY_F)
  ((key-g keyboard-keys/key-g) KEY_G)
  ((key-h keyboard-keys/key-h) KEY_H)
  ((key-i keyboard-keys/key-i) KEY_I)
  ((key-j keyboard-keys/key-j) KEY_J)
  ((key-k keyboard-keys/key-k) KEY_K)
  ((key-l keyboard-keys/key-l) KEY_L)
  ((key-m keyboard-keys/key-m) KEY_M)
  ((key-n keyboard-keys/key-n) KEY_N)
  ((key-o keyboard-keys/key-o) KEY_O)
  ((key-p keyboard-keys/key-p) KEY_P)
  ((key-q keyboard-keys/key-q) KEY_Q)
  ((key-r keyboard-keys/key-r) KEY_R)
  ((key-s keyboard-keys/key-s) KEY_S)
  ((key-t keyboard-keys/key-t) KEY_T)
  ((key-u keyboard-keys/key-u) KEY_U)
  ((key-v keyboard-keys/key-v) KEY_V)
  ((key-w keyboard-keys/key-w) KEY_W)
  ((key-x keyboard-keys/key-x) KEY_X)
  ((key-y keyboard-keys/key-y) KEY_Y)
  ((key-z keyboard-keys/key-z) KEY_Z)

  ; Function keys
  ((key-space keyboard-keys/key-space) KEY_SPACE)
  ((key-escape keyboard-keys/key-escape) KEY_ESCAPE)
  ((key-enter keyboard-keys/key-enter) KEY_ENTER)
  ((key-tab keyboard-keys/key-tab) KEY_TAB)
  ((key-backspace keyboard-keys/key-backspace) KEY_BACKSPACE)
  ((key-insert keyboard-keys/key-insert) KEY_INSERT)
  ((key-delete keyboard-keys/key-delete) KEY_DELETE)
  ((key-right keyboard-keys/key-right) KEY_RIGHT)
  ((key-left keyboard-keys/key-left) KEY_LEFT)
  ((key-down keyboard-keys/key-down) KEY_DOWN)
  ((key-up keyboard-keys/key-up) KEY_UP)
  ((key-page-up keyboard-keys/key-page-up) KEY_PAGE_UP)
  ((key-page-down keyboard-keys/key-page-down) KEY_PAGE_DOWN)
  ((key-home keyboard-keys/key-home) KEY_HOME)
  ((key-end keyboard-keys/key-end) KEY_END)
  ((key-caps-lock keyboard-keys/key-caps-lock) KEY_CAPS_LOCK)
  ((key-scroll-lock keyboard-keys/key-scroll-lock) KEY_SCROLL_LOCK)
  ((key-num-lock keyboard-keys/key-num-lock) KEY_NUM_LOCK)
  ((key-print-screen keyboard-keys/key-print-screen) KEY_PRINT_SCREEN)
  ((key-pause keyboard-keys/key-pause) KEY_PAUSE)
  ((key-f1 keyboard-keys/key-f1) KEY_F1)
  ((key-f2 keyboard-keys/key-f2) KEY_F2)
  ((key-f3 keyboard-keys/key-f3) KEY_F3)
  ((key-f4 keyboard-keys/key-f4) KEY_F4)
  ((key-f5 keyboard-keys/key-f5) KEY_F5)
  ((key-f6 keyboard-keys/key-f6) KEY_F6)
  ((key-f7 keyboard-keys/key-f7) KEY_F7)
  ((key-f8 keyboard-keys/key-f8) KEY_F8)
  ((key-f9 keyboard-keys/key-f9) KEY_F9)
  ((key-f10 keyboard-keys/key-f10) KEY_F10)
  ((key-f11 keyboard-keys/key-f11) KEY_F11)
  ((key-f12 keyboard-keys/key-f12) KEY_F12)
  ((key-left-shift keyboard-keys/key-left-shift) KEY_LEFT_SHIFT)
  ((key-left-control keyboard-keys/key-left-control) KEY_LEFT_CONTROL)
  ((key-left-alt keyboard-keys/key-left-alt) KEY_LEFT_ALT)
  ((key-left-super keyboard-keys/key-left-super) KEY_LEFT_SUPER)
  ((key-right-shift keyboard-keys/key-right-shift) KEY_RIGHT_SHIFT)
  ((key-right-control keyboard-keys/key-right-control) KEY_RIGHT_CONTROL)
  ((key-right-alt keyboard-keys/key-right-alt) KEY_RIGHT_ALT)
  ((key-right-super keyboard-keys/key-right-super) KEY_RIGHT_SUPER)
  ((key-kb-menu keyboard-keys/key-kb-menu) KEY_KB_MENU)
  ((key-left-bracket keyboard-keys/key-left-bracket) KEY_LEFT_BRACKET)
  ((key-backslash keyboard-keys/key-backslash) KEY_BACKSLASH)
  ((key-right-bracket keyboard-keys/key-right-bracket) KEY_RIGHT_BRACKET)
  ((key-grave keyboard-keys/key-grave) KEY_GRAVE)

  ; Keypad keys
  ((key-kp-0 keyboard-keys/key-kp-0) KEY_KP_0)
  ((key-kp-1 keyboard-keys/key-kp-1) KEY_KP_1)
  ((key-kp-2 keyboard-keys/key-kp-2) KEY_KP_2)
  ((key-kp-3 keyboard-keys/key-kp-3) KEY_KP_3)
  ((key-kp-4 keyboard-keys/key-kp-4) KEY_KP_4)
  ((key-kp-5 keyboard-keys/key-kp-5) KEY_KP_5)
  ((key-kp-6 keyboard-keys/key-kp-6) KEY_KP_6)
  ((key-kp-7 keyboard-keys/key-kp-7) KEY_KP_7)
  ((key-kp-8 keyboard-keys/key-kp-8) KEY_KP_8)
  ((key-kp-9 keyboard-keys/key-kp-9) KEY_KP_9)
  ((key-kp-decimal keyboard-keys/key-kp-decimal) KEY_KP_DECIMAL)
  ((key-kp-divide keyboard-keys/key-kp-divide) KEY_KP_DIVIDE)
  ((key-kp-multiply keyboard-keys/key-kp-multiply) KEY_KP_MULTIPLY)
  ((key-kp-subtract keyboard-keys/key-kp-subtract) KEY_KP_SUBTRACT)
  ((key-kp-add keyboard-keys/key-kp-add) KEY_KP_ADD)
  ((key-kp-enter keyboard-keys/key-kp-enter) KEY_KP_ENTER)
  ((key-kp-equal keyboard-keys/key-kp-equal) KEY_KP_EQUAL))

(define-foreign-enum-type (mouse-button int)
  (mouse-button->int int->mouse-button)
  ((mouse-left-button   mouse-button/mouse-left-button)   MOUSE_LEFT_BUTTON)
  ((mouse-right-button  mouse-button/mouse-right-button)  MOUSE_RIGHT_BUTTON)
  ((mouse-middle-button mouse-button/mouse-middle-button) MOUSE_MIDDLE_BUTTON))

(define-foreign-enum-type (shader-uniform-data-type int)
  (shader-uniform-data-type->int int->shader-uniform-data-type)
  ((shader-uniform-data-type/uniform-float uniform-float) UNIFORM_FLOAT)
  ((shader-uniform-data-type/uniform-vec2 uniform-vec2) UNIFORM_VEC2)
  ((shader-uniform-data-type/uniform-vec3 uniform-vec3) UNIFORM_VEC3)
  ((shader-uniform-data-type/uniform-vec4 uniform-vec4) UNIFORM_VEC4)
  ((shader-uniform-data-type/uniform-int uniform-int) UNIFORM_INT)
  ((shader-uniform-data-type/uniform-ivec2 uniform-ivec2) UNIFORM_IVEC2)
  ((shader-uniform-data-type/uniform-ivec3 uniform-ivec3) UNIFORM_IVEC3)
  ((shader-uniform-data-type/uniform-ivec4 uniform-ivec4) UNIFORM_IVEC4)
  ((shader-uniform-data-type/uniform-sampler2d uniform-sampler2d) UNIFORM_SAMPLER2D))

(define-foreign-enum-type (texmap-index int)
  (texmap-index->int int->texmap-index)
  ((texmap-index/map-albedo map-albedo) MAP_ALBEDO)             ; MAP_DIFFUSE
  ((texmap-index/map-metalness map-metalness) MAP_METALNESS)    ; MAP_SPECULAR
  ((texmap-index/map-normal map-normal) MAP_NORMAL)
  ((texmap-index/map-roughness map-roughness) MAP_ROUGHNESS)
  ((texmap-index/map-occlusion map-occlusion) MAP_OCCLUSION)
  ((texmap-index/map-emission map-emission) MAP_EMISSION)
  ((texmap-index/map-height map-height) MAP_HEIGHT)
  ((texmap-index/map-cubemap map-cubemap) MAP_CUBEMAP)          ; NOTE: Uses GL_TEXTURE_CUBE_MAP
  ((texmap-index/map-irradiance map-irradiance) MAP_IRRADIANCE) ; NOTE: Uses GL_TEXTURE_CUBE_MAP
  ((texmap-index/map-prefilter map-prefilter) MAP_PREFILTER)    ; NOTE: Uses GL_TEXTURE_CUBE_MAP
  ((texmap-index/map-brdf map-brdf) MAP_BRDF))

(define map-diffuse  map-albedo)
(define map-specular map-metalness)

(define-foreign-enum-type (trace-log-type unsigned-short)
  (trace-log-type->unsigned-short unsigned-short->trace-log-type)
  ((log-info    trace-log-type/log-info)    LOG_INFO)
  ((log-warning trace-log-type/log-warning) LOG_WARNING)
  ((log-error   trace-log-type/log-error)   LOG_ERROR)
  ((log-debug   trace-log-type/log-debug)   LOG_DEBUG)
  ((log-other   trace-log-type/log-other)   LOG_OTHER))

(define-foreign-record-type (bounding-box BoundingBox))
(define-foreign-record-type (camera Camera))
(define-foreign-record-type (color Color))
(define-foreign-record-type (material Material))
(define-foreign-record-type (material-map MaterialMap))
(define-foreign-record-type (matrix Matrix))
(define-foreign-record-type (mesh Mesh))
(define-foreign-record-type (model Model))
(define-foreign-record-type (ray Ray))
(define-foreign-record-type (rectangle Rectangle))
(define-foreign-record-type (render-texture-2d RenderTexture2D))
(define-foreign-record-type (shader Shader))
(define-foreign-record-type (texture-2d Texture2D))
(define-foreign-record-type (vector-2 Vector2))
(define-foreign-record-type (vector-3 Vector3))
