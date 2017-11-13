.class final Lcom/android/server/desktop/DesktopService$BinderService;
.super Lcom/samsung/android/desktop/IDesktop$Stub;
.source "DesktopService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktop/DesktopService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktop/DesktopService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktop/DesktopService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/desktop/DesktopService$BinderService;->this$0:Lcom/android/server/desktop/DesktopService;

    invoke-direct {p0}, Lcom/samsung/android/desktop/IDesktop$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktop/DesktopService;Lcom/android/server/desktop/DesktopService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p2, "x1"    # Lcom/android/server/desktop/DesktopService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktop/DesktopService$BinderService;-><init>(Lcom/android/server/desktop/DesktopService;)V

    return-void
.end method


# virtual methods
.method public checkDevice()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/desktop/DesktopNative;->checkDevice()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/desktop/DesktopNative;->isConnected()Z

    move-result v0

    return v0
.end method

.method public readData()B
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/desktop/DesktopNative;->readDevice()B

    move-result v0

    return v0
.end method

.method public setConnected(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    invoke-static {p1}, Lcom/android/server/desktop/DesktopNative;->setConnected(Z)V

    return-void
.end method

.method public writeData(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    invoke-static {p1}, Lcom/android/server/desktop/DesktopNative;->writeDevice(I)Z

    move-result v0

    return v0
.end method
