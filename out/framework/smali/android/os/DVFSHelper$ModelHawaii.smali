.class Landroid/os/DVFSHelper$ModelHawaii;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelHawaii"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    .line 2364
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelHawaii;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2365
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelHawaii;->LIST_SCROLL_ARM_FREQ:I

    .line 2366
    return-void
.end method
