.class Landroid/os/DVFSHelper$ModelZL;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelZL"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2159
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelZL;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2160
    iput v0, p0, Landroid/os/DVFSHelper$ModelZL;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2161
    iput v0, p0, Landroid/os/DVFSHelper$ModelZL;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2162
    const v0, 0x1b7740

    iput v0, p0, Landroid/os/DVFSHelper$ModelZL;->AMS_RESUME_ARM_FREQ:I

    .line 2163
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelZL;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2164
    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2165
    return-void
.end method
