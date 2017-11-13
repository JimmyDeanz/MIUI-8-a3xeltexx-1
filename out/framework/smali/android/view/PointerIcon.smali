.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PointerIcon$HoverEffect;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOM_DEFAULT_ICON_ID:I = 0xff

.field private static final HOVERING_CUSTOM_ICON_MAX_COUNT:I = 0x5

.field private static final HOVERING_CUSTOM_ICON_MAX_SIZE:I = 0x9c40

.field private static final HOVERING_CUSTOM_ICON_RESIZE_X:I = 0x64

.field public static final HOVERING_FLAG_ALWAYSSHOW:I = 0x1

.field public static final HOVERING_PENSELECT_POINTER_01:I = 0x15

.field public static final HOVERING_SCROLLICON_POINTER_01:I = 0xb

.field public static final HOVERING_SCROLLICON_POINTER_02:I = 0xc

.field public static final HOVERING_SCROLLICON_POINTER_03:I = 0xd

.field public static final HOVERING_SCROLLICON_POINTER_04:I = 0xe

.field public static final HOVERING_SCROLLICON_POINTER_05:I = 0xf

.field public static final HOVERING_SCROLLICON_POINTER_06:I = 0x10

.field public static final HOVERING_SCROLLICON_POINTER_07:I = 0x11

.field public static final HOVERING_SCROLLICON_POINTER_08:I = 0x12

.field public static final HOVERING_SPENICON_CURSOR:I = 0x2

.field public static final HOVERING_SPENICON_CUSTOM:I = 0x0

.field public static final HOVERING_SPENICON_DEFAULT:I = 0x1

.field public static final HOVERING_SPENICON_DEFAULT_CUSTOM:I = 0x16

.field public static final HOVERING_SPENICON_DISABLE_DEFAULT_CUSTOM:I = 0x17

.field public static final HOVERING_SPENICON_HIDE:I = 0x13

.field public static final HOVERING_SPENICON_HOVERPOPUP_DEFAULT:I = 0x14

.field public static final HOVERING_SPENICON_MORE:I = 0xa

.field public static final HOVERING_SPENICON_MOVE:I = 0x5

.field public static final HOVERING_SPENICON_RESIZE_01:I = 0x6

.field public static final HOVERING_SPENICON_RESIZE_02:I = 0x7

.field public static final HOVERING_SPENICON_RESIZE_03:I = 0x8

.field public static final HOVERING_SPENICON_RESIZE_04:I = 0x9

.field public static final HOVERING_SPENICON_SPLIT_01:I = 0x3

.field public static final HOVERING_SPENICON_SPLIT_02:I = 0x4

.field public static final MOUSEICON_CURSOR:I = 0x66

.field public static final MOUSEICON_CUSTOM:I = 0x64

.field public static final MOUSEICON_DEFAULT:I = 0x65

.field public static final MOUSEICON_DEFAULT_KNOX_DESKTOP:I = 0x79

.field public static final MOUSEICON_DRAWING:I = 0x78

.field public static final MOUSEICON_MORE:I = 0x6e

.field public static final MOUSEICON_MOVE:I = 0x69

.field public static final MOUSEICON_POINTER_01:I = 0x6f

.field public static final MOUSEICON_POINTER_02:I = 0x70

.field public static final MOUSEICON_POINTER_03:I = 0x71

.field public static final MOUSEICON_POINTER_04:I = 0x72

.field public static final MOUSEICON_POINTER_05:I = 0x73

.field public static final MOUSEICON_POINTER_06:I = 0x74

.field public static final MOUSEICON_POINTER_07:I = 0x75

.field public static final MOUSEICON_POINTER_08:I = 0x76

.field public static final MOUSEICON_RESIZE_01:I = 0x6a

.field public static final MOUSEICON_RESIZE_01_KNOX_DESKTOP:I = 0x7a

.field public static final MOUSEICON_RESIZE_02:I = 0x6b

.field public static final MOUSEICON_RESIZE_02_KNOX_DESKTOP:I = 0x7b

.field public static final MOUSEICON_RESIZE_03:I = 0x6c

.field public static final MOUSEICON_RESIZE_03_KNOX_DESKTOP:I = 0x7c

.field public static final MOUSEICON_RESIZE_04:I = 0x6d

.field public static final MOUSEICON_RESIZE_04_KNOX_DESKTOP:I = 0x7d

.field public static final MOUSEICON_SPLIT_01:I = 0x67

.field public static final MOUSEICON_SPLIT_02:I = 0x68

.field public static final MOUSEICON_TRANSPARENT:I = 0x77

.field private static final MOUSE_CUSTOM_ICON_MAX_COUNT:I = 0x5

.field private static final MOUSE_CUSTOM_ICON_MAX_SIZE:I = 0x9c40

.field private static final MOUSE_CUSTOM_ICON_RESIZE_X:I = 0x64

.field public static final STYLE_ARROW:I = 0x3e8

.field public static final STYLE_ARROW_BIG:I = 0x3e9

.field public static final STYLE_CUSTOM:I = -0x1

.field private static final STYLE_DEFAULT:I = 0x3e8

.field public static final STYLE_NULL:I = 0x0

.field private static final STYLE_OEM_FIRST:I = 0x2710

.field public static final STYLE_SPOT_ANCHOR:I = 0x7d2

.field public static final STYLE_SPOT_FINGERHOVER:I = 0x2712

.field public static final STYLE_SPOT_HOVER:I = 0x7d0

.field public static final STYLE_SPOT_HOVERING_SPEN:I = 0x2711

.field public static final STYLE_SPOT_TOUCH:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "PointerIcon"

.field private static final gNullIcon:Landroid/view/PointerIcon;

.field private static mContext:Landroid/content/Context;

.field private static mCustomHotSpotPoint:Landroid/graphics/Point;

.field private static mCustomIconCurrentId:I

.field private static mCustomIconId:I

.field private static mHoverBitmap:[Landroid/graphics/Bitmap;

.field private static mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

.field private static mIconType:I

.field private static volatile mLock:Ljava/lang/Object;

.field private static volatile mLockforMouse:Ljava/lang/Object;

.field private static mMouseBitmap:[Landroid/graphics/Bitmap;

.field private static mMouseCustomHotSpotPoint:Landroid/graphics/Point;

.field private static mMouseCustomIconCurrentId:I

.field private static mMouseCustomIconId:I

.field private static mMouseIconType:I

.field public static mThemeApplied:Z

.field private static sInputManager:Landroid/hardware/input/IInputManager;

.field private static final sStaticInitInput:Ljava/lang/Object;

.field private static final sStaticInitWindow:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHotSpotX:F

.field private mHotSpotY:F

.field private final mStyle:I

.field private mSystemIconResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 98
    new-instance v0, Landroid/view/PointerIcon;

    invoke-direct {v0, v2}, Landroid/view/PointerIcon;-><init>(I)V

    sput-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 180
    sput-boolean v2, Landroid/view/PointerIcon;->mThemeApplied:Z

    .line 504
    new-instance v0, Landroid/view/PointerIcon$1;

    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 848
    sput v1, Landroid/view/PointerIcon;->mMouseIconType:I

    .line 850
    sput-object v3, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    .line 851
    sput v1, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    .line 853
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->mLockforMouse:Ljava/lang/Object;

    .line 1060
    sput v1, Landroid/view/PointerIcon;->mIconType:I

    .line 1061
    sput v1, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 1062
    sput-object v3, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    .line 1063
    sput v2, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    .line 1065
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sStaticInitWindow:Ljava/lang/Object;

    .line 1066
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sStaticInitInput:Ljava/lang/Object;

    .line 1070
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p1, p0, Landroid/view/PointerIcon;->mStyle:I

    .line 187
    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/PointerIcon$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/view/PointerIcon$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/view/PointerIcon;-><init>(I)V

    return-void
.end method

.method static synthetic access$102(Landroid/view/PointerIcon;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/PointerIcon;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    return p1
.end method

.method public static createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    .line 351
    if-nez p0, :cond_0

    .line 352
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    .line 356
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 357
    .local v0, "icon":Landroid/view/PointerIcon;
    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 358
    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 359
    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 360
    return-object v0
.end method

.method public static getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method static getInputManager()Landroid/hardware/input/IInputManager;
    .locals 2

    .prologue
    .line 1405
    sget-object v1, Landroid/view/PointerIcon;->sStaticInitInput:Ljava/lang/Object;

    monitor-enter v1

    .line 1406
    :try_start_0
    sget-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    if-nez v0, :cond_0

    .line 1407
    const-string v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    sput-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    .line 1409
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    monitor-exit v1

    return-object v0

    .line 1410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getNullIcon()Landroid/view/PointerIcon;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    const/16 v11, 0x3e9

    const/4 v10, -0x1

    const/16 v8, 0x3e8

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 226
    if-nez p0, :cond_0

    .line 227
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "context must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    :cond_0
    if-nez p1, :cond_1

    .line 231
    sget-object v4, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 333
    :goto_0
    return-object v4

    .line 235
    :cond_1
    sget-object v4, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-nez v4, :cond_2

    .line 236
    sput-object p0, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    .line 239
    :cond_2
    sget-object v5, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 240
    if-ne p1, v8, :cond_4

    :try_start_0
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    if-eqz v4, :cond_4

    .line 241
    sget-object v4, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_3

    .line 242
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    sget-object v6, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    sget-object v7, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-static {v4, v6, v7}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 244
    :cond_3
    :try_start_1
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    sget-object v6, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sget-object v7, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-static {v4, v6, v7}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto :goto_0

    .line 247
    :cond_4
    const/16 v4, 0x2711

    if-ne p1, v4, :cond_c

    .line 248
    sget v4, Landroid/view/PointerIcon;->mIconType:I

    if-nez v4, :cond_9

    .line 249
    sget v4, Landroid/view/PointerIcon;->mCustomIconId:I

    if-ltz v4, :cond_5

    sget v4, Landroid/view/PointerIcon;->mCustomIconId:I

    const/4 v6, 0x5

    if-lt v4, v6, :cond_6

    .line 250
    :cond_5
    const/4 v4, 0x1

    sput v4, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 251
    const/16 v4, 0x3e8

    invoke-static {p0, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto :goto_0

    .line 253
    :cond_6
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v6, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v6

    if-nez v4, :cond_7

    .line 254
    const-string v4, "PointerIcon"

    const-string v6, "getSystemIcon mHoverBitmap is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v4, 0x3e8

    invoke-static {p0, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_0

    .line 258
    :cond_7
    sget-object v4, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_8

    .line 259
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v6, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v6

    sget-object v6, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v7, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    sget-object v7, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v8, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-static {v4, v6, v7}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_0

    .line 263
    :cond_8
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v6, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v6

    sget-object v6, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sget-object v7, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-static {v4, v6, v7}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_0

    .line 265
    :cond_9
    sget v4, Landroid/view/PointerIcon;->mIconType:I

    const/16 v6, 0x16

    if-eq v4, v6, :cond_a

    sget v4, Landroid/view/PointerIcon;->mIconType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_c

    :cond_a
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_c

    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    if-eqz v4, :cond_c

    .line 267
    sget-object v4, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_b

    .line 268
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    sget-object v6, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    sget-object v7, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-static {v4, v6, v7}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_0

    .line 271
    :cond_b
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    sget-object v6, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sget-object v7, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-static {v4, v6, v7}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_0

    .line 275
    :cond_c
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    sget-object v5, Landroid/view/PointerIcon;->mLockforMouse:Ljava/lang/Object;

    monitor-enter v5

    .line 280
    if-ne p1, v11, :cond_11

    .line 281
    :try_start_2
    sget v4, Landroid/view/PointerIcon;->mMouseIconType:I

    const/16 v6, 0x64

    if-ne v4, v6, :cond_11

    .line 282
    sget v4, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    if-ltz v4, :cond_d

    sget v4, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    const/4 v6, 0x5

    if-lt v4, v6, :cond_e

    .line 283
    :cond_d
    const/4 v4, 0x0

    sput v4, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    .line 284
    const/16 v4, 0x3e8

    invoke-static {p0, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_0

    .line 299
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 286
    :cond_e
    :try_start_3
    sget-object v4, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v6, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v4, v4, v6

    if-nez v4, :cond_f

    .line 287
    const/16 v4, 0x3e8

    invoke-static {p0, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_0

    .line 289
    :cond_f
    sget-object v4, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_10

    .line 290
    sget-object v4, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v6, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v4, v4, v6

    sget-object v6, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v7, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    sget-object v7, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v8, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-static {v4, v6, v7}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_0

    .line 294
    :cond_10
    sget-object v4, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v6, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v4, v4, v6

    sget-object v6, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sget-object v7, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-static {v4, v6, v7}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_0

    .line 299
    :cond_11
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 302
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconStyleIndex(I)I

    move-result v3

    .line 304
    .local v3, "styleIndex":I
    if-nez v3, :cond_12

    const/16 v4, 0x2711

    if-eq p1, v4, :cond_12

    if-eq p1, v11, :cond_12

    .line 305
    invoke-static {v8}, Landroid/view/PointerIcon;->getSystemIconStyleIndex(I)I

    move-result v3

    .line 310
    :cond_12
    const/16 v4, 0x2711

    if-eq p1, v4, :cond_13

    if-ne p1, v11, :cond_14

    .line 311
    :cond_13
    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->DeviceDefault_Pointer:[I

    const v6, 0x11600bb

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 312
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 313
    .local v2, "resourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    :goto_1
    if-ne v2, v10, :cond_16

    .line 323
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing theme resources for pointer icon style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-ne p1, v8, :cond_15

    sget-object v4, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    goto/16 :goto_0

    .line 315
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "resourceId":I
    :cond_14
    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->Pointer:[I

    const v6, 0x1160030

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 318
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 319
    .restart local v2    # "resourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 324
    :cond_15
    invoke-static {p0, v8}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_0

    .line 327
    :cond_16
    new-instance v1, Landroid/view/PointerIcon;

    invoke-direct {v1, p1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 328
    .local v1, "icon":Landroid/view/PointerIcon;
    const/high16 v4, -0x1000000

    and-int/2addr v4, v2

    const/high16 v5, 0x1000000

    if-ne v4, v5, :cond_17

    .line 329
    iput v2, v1, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    :goto_2
    move-object v4, v1

    .line 333
    goto/16 :goto_0

    .line 331
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, p0, v4, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    goto :goto_2
.end method

.method private static getSystemIconStyleIndex(I)I
    .locals 7
    .param p0, "style"    # I

    .prologue
    const/16 v1, 0x13

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 632
    sparse-switch p0, :sswitch_data_0

    .line 746
    :goto_0
    :pswitch_0
    :sswitch_0
    return v0

    .line 637
    :sswitch_1
    sget v0, Landroid/view/PointerIcon;->mMouseIconType:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 689
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 639
    goto :goto_0

    .line 641
    :pswitch_2
    const/16 v0, 0x14

    goto :goto_0

    .line 643
    :pswitch_3
    const/16 v0, 0x15

    goto :goto_0

    .line 645
    :pswitch_4
    const/16 v0, 0x16

    goto :goto_0

    .line 647
    :pswitch_5
    const/16 v0, 0x17

    goto :goto_0

    .line 649
    :pswitch_6
    const/16 v0, 0x18

    goto :goto_0

    .line 651
    :pswitch_7
    const/16 v0, 0x19

    goto :goto_0

    .line 653
    :pswitch_8
    const/16 v0, 0x1a

    goto :goto_0

    .line 655
    :pswitch_9
    const/16 v0, 0x1b

    goto :goto_0

    .line 657
    :pswitch_a
    const/16 v0, 0x1c

    goto :goto_0

    .line 659
    :pswitch_b
    const/16 v0, 0x1d

    goto :goto_0

    .line 661
    :pswitch_c
    const/16 v0, 0x1e

    goto :goto_0

    .line 663
    :pswitch_d
    const/16 v0, 0x1f

    goto :goto_0

    .line 665
    :pswitch_e
    const/16 v0, 0x20

    goto :goto_0

    .line 667
    :pswitch_f
    const/16 v0, 0x21

    goto :goto_0

    .line 669
    :pswitch_10
    const/16 v0, 0x22

    goto :goto_0

    .line 671
    :pswitch_11
    const/16 v0, 0x23

    goto :goto_0

    .line 673
    :pswitch_12
    const/16 v0, 0x24

    goto :goto_0

    .line 675
    :pswitch_13
    const/16 v0, 0x25

    goto :goto_0

    .line 677
    :pswitch_14
    const/16 v0, 0x26

    goto :goto_0

    .line 679
    :pswitch_15
    const/16 v0, 0x28

    goto :goto_0

    .line 681
    :pswitch_16
    const/16 v0, 0x29

    goto :goto_0

    .line 683
    :pswitch_17
    const/16 v0, 0x2a

    goto :goto_0

    .line 685
    :pswitch_18
    const/16 v0, 0x2b

    goto :goto_0

    .line 687
    :pswitch_19
    const/16 v0, 0x2c

    goto :goto_0

    :sswitch_2
    move v0, v2

    .line 692
    goto :goto_0

    :sswitch_3
    move v0, v3

    .line 694
    goto :goto_0

    :sswitch_4
    move v0, v4

    .line 696
    goto :goto_0

    .line 702
    :sswitch_5
    const-string v1, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSystemIconStyleIndex style: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    sget v1, Landroid/view/PointerIcon;->mIconType:I

    packed-switch v1, :pswitch_data_1

    .line 743
    :pswitch_1a
    const/16 v0, 0x9

    goto :goto_0

    .line 705
    :pswitch_1b
    const/16 v0, 0xb

    goto :goto_0

    .line 707
    :pswitch_1c
    const/16 v0, 0xc

    goto :goto_0

    .line 709
    :pswitch_1d
    const/16 v0, 0xd

    goto :goto_0

    .line 711
    :pswitch_1e
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 713
    :pswitch_1f
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 715
    :pswitch_20
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 717
    :pswitch_21
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 719
    :pswitch_22
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 721
    :pswitch_23
    const/16 v0, 0xa

    goto/16 :goto_0

    :pswitch_24
    move v0, v2

    .line 725
    goto/16 :goto_0

    :pswitch_25
    move v0, v3

    .line 727
    goto/16 :goto_0

    :pswitch_26
    move v0, v4

    .line 729
    goto/16 :goto_0

    .line 731
    :pswitch_27
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 733
    :pswitch_28
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 735
    :pswitch_29
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 737
    :pswitch_2a
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 739
    :pswitch_2b
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 741
    :pswitch_2c
    const/16 v0, 0x27

    goto/16 :goto_0

    .line 632
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x7d0 -> :sswitch_2
        0x7d1 -> :sswitch_3
        0x7d2 -> :sswitch_4
        0x2711 -> :sswitch_5
        0x2712 -> :sswitch_0
    .end sparse-switch

    .line 637
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 703
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_1a
        :pswitch_2c
    .end packed-switch
.end method

.method public static loadCustomIcon(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .prologue
    .line 386
    if-nez p0, :cond_0

    .line 387
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "resources must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    :cond_0
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 391
    .local v0, "icon":Landroid/view/PointerIcon;
    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 392
    return-object v0
.end method

.method private loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I

    .prologue
    .line 582
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 587
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v7, "pointer-icon"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 589
    sget-object v7, Lcom/android/internal/R$styleable;->PointerIcon:[I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 591
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 592
    .local v1, "bitmapRes":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 593
    .local v4, "hotSpotX":F
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 594
    .local v5, "hotSpotY":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 601
    if-nez v1, :cond_0

    .line 602
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> is missing bitmap attribute."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 595
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "bitmapRes":I
    .end local v4    # "hotSpotX":F
    .end local v5    # "hotSpotY":F
    :catch_0
    move-exception v3

    .line 596
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Exception parsing pointer icon resource."

    invoke-direct {v7, v8, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v7

    .line 606
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "bitmapRes":I
    .restart local v4    # "hotSpotX":F
    .restart local v5    # "hotSpotY":F
    :cond_0
    if-nez p1, :cond_1

    .line 607
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 611
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    instance-of v7, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v7, :cond_2

    .line 612
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 609
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 617
    :cond_2
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 618
    iput v4, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 619
    iput v5, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 620
    return-void
.end method

.method public static registerHoveringSpenCustomIcon(Landroid/graphics/drawable/Drawable;)I
    .locals 8
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1083
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerHoveringSpenCustomIcon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    if-nez p0, :cond_0

    .line 1088
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerHoveringSpenCustomIcon Drawable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const/4 v4, -0x1

    .line 1108
    :goto_0
    return v4

    .line 1092
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1093
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1095
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1096
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1098
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x9c40

    if-le v4, v5, :cond_1

    .line 1102
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1104
    .local v3, "scale":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1105
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1106
    move-object v0, v2

    .line 1108
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scale":F
    :cond_1
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/hardware/input/IInputManager;->registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public static registerMouseCustomIcon(Landroid/graphics/drawable/Drawable;)I
    .locals 8
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 862
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerMouseCustomIcon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    if-nez p0, :cond_0

    .line 865
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerMouseCustomIcon Drawable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v4, -0x1

    .line 885
    :goto_0
    return v4

    .line 869
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 870
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 872
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 873
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 875
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x9c40

    if-le v4, v5, :cond_1

    .line 879
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 881
    .local v3, "scale":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 882
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 883
    move-object v0, v2

    .line 885
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scale":F
    :cond_1
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/hardware/input/IInputManager;->registerMouseCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public static removeHoveringSpenCustomIcon(I)V
    .locals 3
    .param p0, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1118
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeHoveringSpenCustomIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hardware/input/IInputManager;->removeHoveringSpenCustomIcon(I)V

    .line 1120
    return-void
.end method

.method public static removeMouseCustomIcon(I)V
    .locals 3
    .param p0, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 895
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMouseCustomIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hardware/input/IInputManager;->removeMouseCustomIcon(I)V

    .line 897
    return-void
.end method

.method public static setCustomDefaultIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 760
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCustomDefaultIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType is CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    if-nez p1, :cond_0

    .line 763
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setCustomDefaultIcon(), invalid customIcon."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :goto_0
    return-void

    .line 767
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 768
    const/16 v0, 0x16

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    .line 769
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 770
    const/16 v0, 0x64

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    .line 772
    :cond_2
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setCustomDefaultIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setDisableCustomDefaultIcon()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 782
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setDisableCustomDefaultIcon()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    .line 784
    return-void
.end method

.method public static setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I
    .locals 4
    .param p0, "IconId"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1373
    sget-object v2, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1374
    move v0, p0

    .line 1377
    .local v0, "iReaIconId":I
    if-gez v0, :cond_0

    .line 1378
    :try_start_0
    sget v0, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 1380
    :cond_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1381
    const/4 v0, 0x1

    .line 1384
    :cond_1
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 1385
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 1390
    :goto_0
    const/16 v1, 0xff

    if-ne p0, v1, :cond_2

    .line 1391
    const/4 v0, 0x0

    .line 1399
    :cond_2
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aput-object p1, v1, v0

    .line 1400
    monitor-exit v2

    return v0

    .line 1387
    :cond_3
    const-string v1, "PointerIcon"

    const-string v3, "HoverBitmap instance already exist."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1401
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x5

    .line 1342
    sget-object v1, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1344
    :try_start_0
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    if-lt v0, v2, :cond_1

    .line 1345
    const/4 v0, 0x1

    sput v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    .line 1350
    :goto_0
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1351
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 1356
    :goto_1
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v2, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1357
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v2, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1359
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v2, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aput-object p0, v0, v2

    .line 1360
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    monitor-exit v1

    return v0

    .line 1347
    :cond_1
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    goto :goto_0

    .line 1361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1353
    :cond_2
    :try_start_1
    const-string v0, "PointerIcon"

    const-string v2, "HoverBitmap instance already exist."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1179
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;I)I
    .locals 12
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2711

    const/16 v6, 0x64

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1188
    const-string v0, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHoveringSpenIcon2 iconType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    .line 1195
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    move v2, p0

    move-object v4, v3

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    .line 1215
    :goto_0
    return v0

    .line 1198
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1199
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1201
    .local v10, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v5, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1202
    invoke-virtual {p1, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1204
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    const v2, 0x9c40

    if-le v0, v2, :cond_1

    .line 1208
    const-string v0, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "height:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-static {v7, v6, v6, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1211
    .local v11, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1212
    move-object v7, v11

    .line 1215
    .end local v11    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v4

    move v5, v1

    move v6, p0

    move-object v8, v3

    move v9, p2

    invoke-interface/range {v4 .. v9}, Landroid/hardware/input/IInputManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    goto :goto_0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1227
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I
    .locals 8
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 1236
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHoveringSpenIcon with hotSpotPoint iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1242
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1244
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1245
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1247
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_0

    .line 1251
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1254
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1255
    move-object v3, v7

    .line 1258
    .end local v7    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    move v2, p0

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(II)V
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1129
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(III)V

    .line 1130
    return-void
.end method

.method public static setHoveringSpenIcon(III)V
    .locals 6
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1143
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    const/4 v4, 0x0

    move v2, p0

    move v3, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    .line 1144
    return-void
.end method

.method public static setHoveringSpenIcon(IILandroid/graphics/Point;)V
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1155
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(IILandroid/graphics/Point;I)V

    .line 1156
    return-void
.end method

.method public static setHoveringSpenIcon(IILandroid/graphics/Point;I)V
    .locals 6
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1168
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    .line 1169
    return-void
.end method

.method public static setIcon(II)V
    .locals 4
    .param p0, "deviceType"    # I
    .param p1, "iconType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 793
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 795
    invoke-static {p1, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 803
    :goto_0
    return-void

    .line 797
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 798
    invoke-static {p1, v3}, Landroid/view/PointerIcon;->setMouseIcon(II)V

    goto :goto_0

    .line 801
    :cond_1
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 812
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType is CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 814
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    .line 822
    :goto_0
    return-void

    .line 816
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 817
    const/16 v0, 0x64

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    .line 820
    :cond_1
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V
    .locals 3
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 832
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType is CUSTOM, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 834
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I

    .line 842
    :goto_0
    return-void

    .line 836
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 837
    const/16 v0, 0x64

    invoke-static {v0, p1, p2}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I

    goto :goto_0

    .line 840
    :cond_1
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setMouseCustomIcon(ILandroid/graphics/Bitmap;)I
    .locals 4
    .param p0, "IconId"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1029
    sget-object v2, Landroid/view/PointerIcon;->mLockforMouse:Ljava/lang/Object;

    monitor-enter v2

    .line 1030
    move v0, p0

    .line 1032
    .local v0, "iReaIconId":I
    if-gez v0, :cond_0

    .line 1033
    :try_start_0
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    .line 1036
    :cond_0
    if-gez v0, :cond_1

    .line 1037
    const/4 v0, 0x0

    .line 1040
    :cond_1
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 1041
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    .line 1046
    :goto_0
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 1047
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1050
    :cond_2
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    aput-object p1, v1, v0

    .line 1051
    monitor-exit v2

    return v0

    .line 1043
    :cond_3
    const-string v1, "PointerIcon"

    const-string v3, "MouseBitmap instance already exist"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1052
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setMouseCustomIcon(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x5

    .line 1005
    sget-object v1, Landroid/view/PointerIcon;->mLockforMouse:Ljava/lang/Object;

    monitor-enter v1

    .line 1006
    :try_start_0
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    if-lt v0, v2, :cond_1

    .line 1007
    const/4 v0, 0x0

    sput v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    .line 1012
    :goto_0
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1013
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    .line 1018
    :goto_1
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v2, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1019
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v2, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1021
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v2, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    aput-object p0, v0, v2

    .line 1022
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    monitor-exit v1

    return v0

    .line 1009
    :cond_1
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    goto :goto_0

    .line 1023
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1015
    :cond_2
    :try_start_1
    const-string v0, "PointerIcon"

    const-string v2, "MouseBitmap instance already exist"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 926
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;I)I
    .locals 8
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 932
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseIcon2 iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 935
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 937
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 938
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 940
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_0

    .line 944
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 947
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 948
    move-object v3, v7

    .line 951
    .end local v7    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v4, 0x0

    move v2, p0

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 957
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I
    .locals 8
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 963
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseIcon with hotSpotPoint iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 966
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 968
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 969
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 971
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_0

    .line 975
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 978
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 979
    move-object v3, v7

    .line 982
    .end local v7    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    move v2, p0

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(II)V
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 902
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setMouseIcon(III)V

    .line 903
    return-void
.end method

.method public static setMouseIcon(III)V
    .locals 6
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 908
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v4, 0x0

    move v2, p0

    move v3, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    .line 909
    return-void
.end method

.method public static setMouseIcon(IILandroid/graphics/Point;)V
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 914
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setMouseIcon(IILandroid/graphics/Point;I)V

    .line 915
    return-void
.end method

.method public static setMouseIcon(IILandroid/graphics/Point;I)V
    .locals 6
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 920
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    .line 921
    return-void
.end method

.method public static setMousePointerIcon(IILandroid/graphics/Point;)Z
    .locals 3
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;

    .prologue
    .line 988
    sget v0, Landroid/view/PointerIcon;->mMouseIconType:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    sget v0, Landroid/view/PointerIcon;->mMouseIconType:I

    if-ne v0, p0, :cond_0

    .line 989
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseCustomIcon IconType is same."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/view/PointerIcon;->mMouseIconType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v0, 0x0

    .line 999
    :goto_0
    return v0

    .line 993
    :cond_0
    sget-object v1, Landroid/view/PointerIcon;->mLockforMouse:Ljava/lang/Object;

    monitor-enter v1

    .line 994
    :try_start_0
    sput p0, Landroid/view/PointerIcon;->mMouseIconType:I

    .line 995
    sput p1, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    .line 996
    sput-object p2, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    .line 997
    monitor-exit v1

    .line 999
    const/4 v0, 0x1

    goto :goto_0

    .line 997
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setPointerIcon(IILandroid/graphics/Point;)Z
    .locals 10
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;

    .prologue
    const/16 v9, 0x14

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1268
    if-ne p0, v9, :cond_0

    sget v7, Landroid/view/PointerIcon;->mCustomIconId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 1331
    :goto_0
    return v5

    .line 1270
    :cond_0
    if-ne p0, v9, :cond_1

    .line 1271
    const/4 p0, 0x1

    .line 1273
    :cond_1
    const/16 v7, 0x16

    if-eq p0, v7, :cond_2

    const/16 v7, 0x17

    if-ne p0, v7, :cond_3

    .line 1274
    :cond_2
    const-string v5, "PointerIcon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setHoveringSpenCustomIcon mIconType is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/view/PointerIcon;->mIconType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", iconType is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1275
    goto :goto_0

    .line 1276
    :cond_3
    sget v7, Landroid/view/PointerIcon;->mIconType:I

    if-ne v7, v6, :cond_9

    sget-boolean v7, Landroid/view/PointerIcon;->mThemeApplied:Z

    if-eqz v7, :cond_9

    .line 1277
    const-string v7, "PointerIcon"

    const-string/jumbo v8, "setHoveringSpenCustomIcon : HOVERING_SPENICON_DEFAULT. Theme changed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    sput-boolean v5, Landroid/view/PointerIcon;->mThemeApplied:Z

    .line 1284
    :cond_4
    const/4 v0, 0x0

    .line 1286
    .local v0, "bNeedPlaySound":Z
    sget-object v7, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1287
    :try_start_0
    sput p0, Landroid/view/PointerIcon;->mIconType:I

    .line 1288
    sput p1, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 1289
    sput-object p2, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    .line 1290
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    const/16 v7, 0xa

    if-ne p0, v7, :cond_8

    .line 1293
    sget-object v7, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_5

    sget-object v7, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "spen_feedback_sound"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "spen_feedback_sound_air_view"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    .line 1295
    const/4 v0, 0x1

    .line 1299
    :cond_5
    sget-object v7, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_6

    sget-object v7, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "pen_hovering_sound"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    .line 1300
    const/4 v0, 0x1

    .line 1304
    :cond_6
    sget-object v5, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_7

    sget-object v5, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v5, "2015A"

    const-string/jumbo v7, "ro.build.scafe.version"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1305
    sget-object v5, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v7, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v4

    .line 1306
    .local v4, "uspLevel":I
    const/4 v5, 0x3

    if-le v4, v5, :cond_7

    .line 1307
    const/4 v0, 0x0

    .line 1311
    .end local v4    # "uspLevel":I
    :cond_7
    if-eqz v0, :cond_8

    .line 1312
    sget-object v7, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1313
    :try_start_1
    sget-object v5, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    if-nez v5, :cond_a

    .line 1314
    new-instance v5, Landroid/view/PointerIcon$HoverEffect;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Landroid/view/PointerIcon$HoverEffect;-><init>(Landroid/view/PointerIcon$1;)V

    sput-object v5, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    .line 1318
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1322
    .local v2, "token":J
    :try_start_2
    sget-object v5, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    invoke-virtual {v5, p0}, Landroid/view/PointerIcon$HoverEffect;->playSound(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1326
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "token":J
    :cond_8
    :goto_2
    move v5, v6

    .line 1331
    goto/16 :goto_0

    .line 1279
    .end local v0    # "bNeedPlaySound":Z
    :cond_9
    sget v7, Landroid/view/PointerIcon;->mIconType:I

    if-eqz v7, :cond_4

    sget v7, Landroid/view/PointerIcon;->mIconType:I

    if-ne v7, p0, :cond_4

    .line 1280
    const-string v6, "PointerIcon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setHoveringSpenCustomIcon IconType is same."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/view/PointerIcon;->mIconType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1290
    .restart local v0    # "bNeedPlaySound":Z
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 1316
    :cond_a
    :try_start_4
    const-string v5, "PointerIcon"

    const-string v8, "HoverEffect instance already exist"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1318
    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 1323
    .restart local v2    # "token":J
    :catch_0
    move-exception v1

    .line 1324
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v5, "PointerIcon"

    const-string/jumbo v7, "setPointerIcon , Exception is occurred during playSound"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1326
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private throwIfIconIsNotLoaded()V
    .locals 2

    .prologue
    .line 499
    invoke-virtual {p0}, Landroid/view/PointerIcon;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The icon is not loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    return-void
.end method

.method private static validateHotSpot(Landroid/graphics/Bitmap;FF)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    const/4 v1, 0x0

    .line 623
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 624
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_1
    cmpg-float v0, p2, v1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_3

    .line 627
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 558
    if-ne p0, p1, :cond_1

    .line 578
    :cond_0
    :goto_0
    return v1

    .line 562
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Landroid/view/PointerIcon;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 563
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 566
    check-cast v0, Landroid/view/PointerIcon;

    .line 567
    .local v0, "otherIcon":Landroid/view/PointerIcon;
    iget v3, p0, Landroid/view/PointerIcon;->mStyle:I

    iget v4, v0, Landroid/view/PointerIcon;->mStyle:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iget v4, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eq v3, v4, :cond_5

    :cond_4
    move v1, v2

    .line 569
    goto :goto_0

    .line 572
    :cond_5
    iget v3, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v3, v4, :cond_6

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    iget v4, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    iget v4, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_6
    move v1, v2

    .line 575
    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 464
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 465
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHotSpotX()F
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 480
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    return v0
.end method

.method public getHotSpotY()F
    .locals 1

    .prologue
    .line 494
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 495
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNullIcon()Z
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    if-nez p1, :cond_0

    .line 408
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :cond_0
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    :cond_1
    move-object v0, p0

    .line 418
    :goto_0
    return-object v0

    .line 415
    :cond_2
    new-instance v0, Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/PointerIcon;->mStyle:I

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 416
    .local v0, "result":Landroid/view/PointerIcon;
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iput v1, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-direct {v0, p1, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 541
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-eqz v0, :cond_0

    .line 544
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 547
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 548
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 551
    :cond_0
    return-void
.end method
