.class Landroid/os/DVFSHelper$ModelV13GWIFI;
.super Landroid/os/DVFSHelper$ModelHA;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelV13GWIFI"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    .line 2249
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelV13GWIFI;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelHA;-><init>(Landroid/os/DVFSHelper;)V

    .line 2250
    const v0, 0xf4240

    iput v0, p0, Landroid/os/DVFSHelper$ModelV13GWIFI;->BROWSER_FLING_ARM_FREQ:I

    .line 2251
    return-void
.end method
