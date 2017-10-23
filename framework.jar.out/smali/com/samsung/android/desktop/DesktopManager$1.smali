.class Lcom/samsung/android/desktop/DesktopManager$1;
.super Landroid/os/FileObserver;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/desktop/DesktopManager;-><init>(Landroid/content/Context;Lcom/samsung/android/desktop/IDesktop;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktop/DesktopManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/desktop/DesktopManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/desktop/DesktopManager$1;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 124
    and-int/lit16 v0, p1, 0xfff

    sparse-switch v0, :sswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 126
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$1;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    # getter for: Lcom/samsung/android/desktop/DesktopManager;->mIsDeskDockConnected:Z
    invoke-static {v0}, Lcom/samsung/android/desktop/DesktopManager;->access$200(Lcom/samsung/android/desktop/DesktopManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hidraw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$1;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    iget-object v1, p0, Lcom/samsung/android/desktop/DesktopManager$1;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    # invokes: Lcom/samsung/android/desktop/DesktopManager;->checkDevice()Z
    invoke-static {v1}, Lcom/samsung/android/desktop/DesktopManager;->access$300(Lcom/samsung/android/desktop/DesktopManager;)Z

    move-result v1

    # setter for: Lcom/samsung/android/desktop/DesktopManager;->mIsDeskDockConnected:Z
    invoke-static {v0, v1}, Lcom/samsung/android/desktop/DesktopManager;->access$202(Lcom/samsung/android/desktop/DesktopManager;Z)Z

    .line 128
    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$1;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    # getter for: Lcom/samsung/android/desktop/DesktopManager;->mIsDeskDockConnected:Z
    invoke-static {v0}, Lcom/samsung/android/desktop/DesktopManager;->access$200(Lcom/samsung/android/desktop/DesktopManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$1;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    sget-object v1, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DOCK_CONNECT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktop/DesktopManager;->setDesktopState(Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$1;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    # invokes: Lcom/samsung/android/desktop/DesktopManager;->updateKnoxDesktopModeState()V
    invoke-static {v0}, Lcom/samsung/android/desktop/DesktopManager;->access$400(Lcom/samsung/android/desktop/DesktopManager;)V

    goto :goto_0

    .line 135
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$1;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    # getter for: Lcom/samsung/android/desktop/DesktopManager;->mIsDeskDockConnected:Z
    invoke-static {v0}, Lcom/samsung/android/desktop/DesktopManager;->access$200(Lcom/samsung/android/desktop/DesktopManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hidraw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$1;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    iget-object v1, p0, Lcom/samsung/android/desktop/DesktopManager$1;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    # invokes: Lcom/samsung/android/desktop/DesktopManager;->checkDevice()Z
    invoke-static {v1}, Lcom/samsung/android/desktop/DesktopManager;->access$300(Lcom/samsung/android/desktop/DesktopManager;)Z

    move-result v1

    # setter for: Lcom/samsung/android/desktop/DesktopManager;->mIsDeskDockConnected:Z
    invoke-static {v0, v1}, Lcom/samsung/android/desktop/DesktopManager;->access$202(Lcom/samsung/android/desktop/DesktopManager;Z)Z

    .line 137
    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$1;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    # getter for: Lcom/samsung/android/desktop/DesktopManager;->mIsDeskDockConnected:Z
    invoke-static {v0}, Lcom/samsung/android/desktop/DesktopManager;->access$200(Lcom/samsung/android/desktop/DesktopManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$1;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    sget-object v1, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DOCK_DISCONNECT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktop/DesktopManager;->setDesktopState(Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$1;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    # invokes: Lcom/samsung/android/desktop/DesktopManager;->updateKnoxDesktopModeState()V
    invoke-static {v0}, Lcom/samsung/android/desktop/DesktopManager;->access$400(Lcom/samsung/android/desktop/DesktopManager;)V

    goto :goto_0

    .line 124
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch
.end method
