.class Landroid/os/DVFSHelper$ModelCARMEN2;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelCARMEN2"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x10c8e0

    .line 2306
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelCARMEN2;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2307
    const v0, 0x16e360

    iput v0, p0, Landroid/os/DVFSHelper$ModelCARMEN2;->AMS_RESUME_ARM_FREQ:I

    .line 2308
    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2309
    const v0, 0xf4240

    iput v0, p0, Landroid/os/DVFSHelper$ModelCARMEN2;->LIST_SCROLL_ARM_FREQ:I

    .line 2310
    iput v1, p0, Landroid/os/DVFSHelper$ModelCARMEN2;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2311
    iput v1, p0, Landroid/os/DVFSHelper$ModelCARMEN2;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2312
    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2313
    iput v1, p0, Landroid/os/DVFSHelper$ModelCARMEN2;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2314
    return-void
.end method
