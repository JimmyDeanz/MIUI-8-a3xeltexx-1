.class Landroid/os/DVFSHelper$ModelTR3CA;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelTR3CA"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x130b00

    .line 2148
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelTR3CA;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2149
    iput v1, p0, Landroid/os/DVFSHelper$ModelTR3CA;->AMS_RESUME_ARM_FREQ:I

    .line 2150
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper$ModelTR3CA;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2151
    iput v1, p0, Landroid/os/DVFSHelper$ModelTR3CA;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2152
    const/16 v0, 0x64

    iput v0, p0, Landroid/os/DVFSHelper$ModelTR3CA;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 2153
    iput v1, p0, Landroid/os/DVFSHelper$ModelTR3CA;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2154
    iput v1, p0, Landroid/os/DVFSHelper$ModelTR3CA;->ROTATION_ARM_FREQ:I

    .line 2155
    return-void
.end method
