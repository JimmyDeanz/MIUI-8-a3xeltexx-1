.class Lcom/android/server/audio/AudioService$7;
.super Landroid/hardware/display/ExtendedDisplayListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/hardware/display/ExtendedDisplayListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenSharingStatusChanged(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    return-void
.end method
