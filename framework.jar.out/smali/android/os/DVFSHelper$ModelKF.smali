.class Landroid/os/DVFSHelper$ModelKF;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelKF"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const/16 v1, 0x5f5

    .line 2076
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelKF;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2077
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelKF;->LIST_SCROLL_ARM_FREQ:I

    .line 2078
    const v0, 0x1b7740

    iput v0, p0, Landroid/os/DVFSHelper$ModelKF;->AMS_RESUME_ARM_FREQ:I

    .line 2079
    const/4 v0, 0x4

    iput v0, p0, Landroid/os/DVFSHelper$ModelKF;->AMS_RESUME_CPU_CORE:I

    .line 2080
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper$ModelKF;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2081
    const v0, 0x258000

    iput v0, p0, Landroid/os/DVFSHelper$ModelKF;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2082
    const/16 v0, 0x64

    iput v0, p0, Landroid/os/DVFSHelper$ModelKF;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 2083
    iput v1, p0, Landroid/os/DVFSHelper$ModelKF;->APP_LAUNCH_BUS_FREQ:I

    .line 2084
    iput v1, p0, Landroid/os/DVFSHelper$ModelKF;->AMS_RESUME_BUS_FREQ:I

    .line 2086
    const/4 v0, 0x2

    sput v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 2087
    return-void
.end method
