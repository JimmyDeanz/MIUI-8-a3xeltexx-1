.class Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest$1;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest$1;->this$1:Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest$1;->this$1:Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->cancelFrequencyRequest()V

    .line 675
    return-void
.end method
