.class Landroid/os/DVFSHelper$ModelHRQ;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelHRQ"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelHRQ;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    const/16 v0, 0x70c

    iput v0, p0, Landroid/os/DVFSHelper$ModelHRQ;->APP_LAUNCH_BUS_FREQ:I

    const/16 v0, 0x613

    iput v0, p0, Landroid/os/DVFSHelper$ModelHRQ;->AMS_RESUME_BUS_FREQ:I

    return-void
.end method
