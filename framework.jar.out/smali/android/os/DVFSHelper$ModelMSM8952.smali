.class Landroid/os/DVFSHelper$ModelMSM8952;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelMSM8952"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 3

    .prologue
    const v2, 0x85980

    const v1, 0x79e00

    .line 2538
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelMSM8952;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2539
    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8952;->LIST_SCROLL_ARM_FREQ:I

    .line 2540
    const v0, 0x148200

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8952;->AMS_RESUME_ARM_FREQ:I

    .line 2541
    const/16 v0, 0x326

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8952;->AMS_RESUME_BUS_FREQ:I

    .line 2542
    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2543
    const/16 v0, 0x3a3

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8952;->APP_LAUNCH_BUS_FREQ:I

    .line 2544
    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8952;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2545
    iput v2, p0, Landroid/os/DVFSHelper$ModelMSM8952;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2546
    iput v2, p0, Landroid/os/DVFSHelper$ModelMSM8952;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2547
    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2548
    return-void
.end method
