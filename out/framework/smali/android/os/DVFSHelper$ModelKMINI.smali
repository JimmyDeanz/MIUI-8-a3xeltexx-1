.class Landroid/os/DVFSHelper$ModelKMINI;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelKMINI"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x61a80

    .line 2416
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelKMINI;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2417
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper$ModelKMINI;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2418
    const v0, 0xf4240

    iput v0, p0, Landroid/os/DVFSHelper$ModelKMINI;->LIST_SCROLL_ARM_FREQ:I

    .line 2419
    const/16 v0, 0x3e8

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2420
    const v0, 0x155cc0

    iput v0, p0, Landroid/os/DVFSHelper$ModelKMINI;->AMS_RESUME_ARM_FREQ:I

    .line 2421
    iput v1, p0, Landroid/os/DVFSHelper$ModelKMINI;->AMS_RESUME_BUS_FREQ:I

    .line 2422
    iput v1, p0, Landroid/os/DVFSHelper$ModelKMINI;->APP_LAUNCH_BUS_FREQ:I

    .line 2423
    return-void
.end method
