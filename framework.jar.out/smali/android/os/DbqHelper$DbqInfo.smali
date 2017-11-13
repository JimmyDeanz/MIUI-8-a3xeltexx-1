.class Landroid/os/DbqHelper$DbqInfo;
.super Ljava/lang/Object;
.source "DbqHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DbqHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DbqInfo"
.end annotation


# instance fields
.field public bufferCount:I

.field public isActEnabled:Ljava/lang/Boolean;

.field public isSvEnabled:Ljava/lang/Boolean;

.field final synthetic this$0:Landroid/os/DbqHelper;


# direct methods
.method public constructor <init>(Landroid/os/DbqHelper;IZZ)V
    .locals 1
    .param p2, "bufferCount"    # I
    .param p3, "actEnable"    # Z
    .param p4, "svEnable"    # Z

    .prologue
    .line 41
    iput-object p1, p0, Landroid/os/DbqHelper$DbqInfo;->this$0:Landroid/os/DbqHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p2, p0, Landroid/os/DbqHelper$DbqInfo;->bufferCount:I

    .line 43
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DbqHelper$DbqInfo;->isActEnabled:Ljava/lang/Boolean;

    .line 44
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DbqHelper$DbqInfo;->isSvEnabled:Ljava/lang/Boolean;

    .line 45
    return-void
.end method
