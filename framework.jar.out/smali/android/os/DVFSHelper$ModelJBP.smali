.class Landroid/os/DVFSHelper$ModelJBP;
.super Landroid/os/DVFSHelper$Model;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelJBP"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    const/16 v4, 0x1f4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1974
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelJBP;->this$0:Landroid/os/DVFSHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/DVFSHelper$Model;-><init>(Landroid/os/DVFSHelper;Landroid/os/DVFSHelper$1;)V

    .line 1975
    iput v5, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_TOUCH_BOOST_TIMEOUT:I

    .line 1976
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_TOUCH_ARM_FREQ:I

    .line 1977
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_TOUCH_BUS_FREQ:I

    .line 1978
    iput v4, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    .line 1979
    iput v4, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_TAIL_BOOST_TIMEOUT:I

    .line 1980
    const v0, 0x16e360

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_ARM_FREQ:I

    .line 1981
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_BUS_FREQ:I

    .line 1982
    iput v5, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 1983
    const v0, 0x16e360

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 1984
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_BUS_FREQ:I

    .line 1985
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_GPU_FREQ:I

    .line 1986
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_CPU_CORE:I

    .line 1987
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->GROUP_PLAY_ARM_FREQ:I

    .line 1988
    const v0, 0xc3500

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->LIST_SCROLL_ARM_FREQ:I

    .line 1989
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LIST_SCROLL_GPU_FREQ:I

    .line 1990
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LIST_SCROLL_BUS_FREQ:I

    .line 1991
    sput v3, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 1992
    sput v3, Landroid/os/DVFSHelper;->WAKEUP_BOOSTER_CORE_NUM:I

    .line 1993
    const v0, 0x118c30

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_ARM_FREQ:I

    .line 1994
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_GPU_FREQ:I

    .line 1995
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_BUS_FREQ:I

    .line 1996
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_CPU_CORE:I

    .line 1997
    const/16 v0, 0x12c

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 1998
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->APP_LAUNCH_ARM_FREQ:I

    .line 1999
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->APP_LAUNCH_GPU_FREQ:I

    .line 2000
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->APP_LAUNCH_BUS_FREQ:I

    .line 2001
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->APP_LAUNCH_CPU_CORE:I

    .line 2002
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_FLING_ARM_FREQ:I

    .line 2003
    const/16 v0, 0x7d0

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2004
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2005
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->ROTATION_ARM_FREQ:I

    .line 2006
    return-void
.end method
