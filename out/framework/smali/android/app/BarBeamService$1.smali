.class Landroid/app/BarBeamService$1;
.super Ljava/util/TimerTask;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BarBeamService;->blinkLED()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bSwitch:Z

.field final synthetic this$0:Landroid/app/BarBeamService;


# direct methods
.method constructor <init>(Landroid/app/BarBeamService;)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/BarBeamService$1;->bSwitch:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    iget-boolean v1, p0, Landroid/app/BarBeamService$1;->bSwitch:Z

    # invokes: Landroid/app/BarBeamService;->swtichLED(Z)Z
    invoke-static {v0, v1}, Landroid/app/BarBeamService;->access$000(Landroid/app/BarBeamService;Z)Z

    .line 106
    iget-boolean v0, p0, Landroid/app/BarBeamService$1;->bSwitch:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/app/BarBeamService$1;->bSwitch:Z

    .line 107
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
