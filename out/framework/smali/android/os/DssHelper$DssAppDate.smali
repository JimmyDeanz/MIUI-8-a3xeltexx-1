.class Landroid/os/DssHelper$DssAppDate;
.super Ljava/lang/Object;
.source "DssHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DssHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DssAppDate"
.end annotation


# instance fields
.field public mEnableSIOP:Z

.field public mScale:F

.field final synthetic this$0:Landroid/os/DssHelper;


# direct methods
.method constructor <init>(Landroid/os/DssHelper;)V
    .locals 1

    .prologue
    .line 38
    iput-object p1, p0, Landroid/os/DssHelper$DssAppDate;->this$0:Landroid/os/DssHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/os/DssHelper$DssAppDate;->mScale:F

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/DssHelper$DssAppDate;->mEnableSIOP:Z

    .line 41
    return-void
.end method


# virtual methods
.method addPackage(F)V
    .locals 1
    .param p1, "scalingFactor"    # F

    .prologue
    .line 44
    iput p1, p0, Landroid/os/DssHelper$DssAppDate;->mScale:F

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/DssHelper$DssAppDate;->mEnableSIOP:Z

    .line 46
    return-void
.end method

.method addPackage(FZ)V
    .locals 0
    .param p1, "scalingFactor"    # F
    .param p2, "enableSIOP"    # Z

    .prologue
    .line 49
    iput p1, p0, Landroid/os/DssHelper$DssAppDate;->mScale:F

    .line 50
    iput-boolean p2, p0, Landroid/os/DssHelper$DssAppDate;->mEnableSIOP:Z

    .line 51
    return-void
.end method
