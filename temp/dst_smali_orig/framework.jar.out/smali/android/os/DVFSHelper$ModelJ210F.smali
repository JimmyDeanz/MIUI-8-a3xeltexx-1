.class Landroid/os/DVFSHelper$ModelJ210F;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelJ210F"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x4

    const/4 v0, -0x1

    iput-object p1, p0, Landroid/os/DVFSHelper$ModelJ210F;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->BROWSER_TOUCH_BOOST_TIMEOUT:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->BROWSER_TOUCH_ARM_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->BROWSER_TOUCH_BUS_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->GALLERY_TOUCH_TAIL_BOOST_TIMEOUT:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->GALLERY_TOUCH_ARM_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->GALLERY_TOUCH_BUS_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->LAUNCHER_TOUCH_ARM_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->LAUNCHER_TOUCH_BUS_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->LAUNCHER_TOUCH_GPU_FREQ:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelJ210F;->LAUNCHER_TOUCH_CPU_CORE:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->GROUP_PLAY_ARM_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->LIST_SCROLL_ARM_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->LIST_SCROLL_GPU_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->LIST_SCROLL_BUS_FREQ:I

    sput v2, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    sput v2, Landroid/os/DVFSHelper;->WAKEUP_BOOSTER_CORE_NUM:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->AMS_RESUME_ARM_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->AMS_RESUME_GPU_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->AMS_RESUME_BUS_FREQ:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelJ210F;->AMS_RESUME_CPU_CORE:I

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->APP_LAUNCH_ARM_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->APP_LAUNCH_GPU_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->APP_LAUNCH_BUS_FREQ:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelJ210F;->APP_LAUNCH_CPU_CORE:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->BROWSER_FLING_ARM_FREQ:I

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->DEVICE_WAKEUP_ARM_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelJ210F;->ROTATION_ARM_FREQ:I

    return-void
.end method
