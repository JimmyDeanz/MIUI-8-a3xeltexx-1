.class Landroid/os/DVFSHelper$ModelISLA;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelISLA"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0xf4240

    .line 2294
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelISLA;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2295
    const v0, 0x13d620

    iput v0, p0, Landroid/os/DVFSHelper$ModelISLA;->AMS_RESUME_ARM_FREQ:I

    .line 2296
    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2297
    const v0, 0xdbba0

    iput v0, p0, Landroid/os/DVFSHelper$ModelISLA;->LIST_SCROLL_ARM_FREQ:I

    .line 2298
    iput v1, p0, Landroid/os/DVFSHelper$ModelISLA;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2299
    iput v1, p0, Landroid/os/DVFSHelper$ModelISLA;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2300
    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2301
    iput v1, p0, Landroid/os/DVFSHelper$ModelISLA;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2302
    return-void
.end method
