.class Lcom/android/server/display/IpRemoteDisplayController$11;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$connectedMode:I

.field final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$flags:I

.field final synthetic val$height:I

.field final synthetic val$oldDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$oldDisplayHeight:I

.field final synthetic val$oldDisplayWidth:I

.field final synthetic val$oldSurface:Landroid/view/Surface;

.field final synthetic val$requestPendingSetup:Z

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;IIIZIII)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$surface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p5, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$display:Landroid/hardware/display/WifiDisplay;

    iput p6, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldDisplayWidth:I

    iput p7, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldDisplayHeight:I

    iput p8, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$connectedMode:I

    iput-boolean p9, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$requestPendingSetup:Z

    iput p10, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$width:I

    iput p11, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$height:I

    iput p12, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 702
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldDisplayWidth:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldDisplayHeight:I

    if-ne v0, v2, :cond_5

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1200(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayDisconnected()V

    .line 717
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$display:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_4

    .line 718
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 719
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1200(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$display:Landroid/hardware/display/WifiDisplay;

    iget v2, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$connectedMode:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayConnecting(Landroid/hardware/display/WifiDisplay;I)V

    .line 722
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$surface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_6

    .line 730
    :cond_4
    :goto_1
    return-void

    .line 705
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1200(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayConnectionFailed()V

    goto :goto_0

    .line 725
    :cond_6
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 726
    .local v6, "platform":Ljava/lang/String;
    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " use surface on WFD !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1200(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$surface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$width:I

    iget v4, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$height:I

    iget v5, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$flags:I

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    goto :goto_1
.end method
