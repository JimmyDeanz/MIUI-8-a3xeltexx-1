.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;
.super Landroid/app/IProcessObserver$Stub;
.source "KnoxVpnProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->onApplicationStart(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->access$000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;II)V

    .line 40
    return-void
.end method

.method public onProcessDied(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->onApplicationStop(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->access$100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;II)V

    .line 50
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    .line 45
    return-void
.end method
