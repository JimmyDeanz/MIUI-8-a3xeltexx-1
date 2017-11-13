.class Lcom/android/internal/telephony/uicc/SIMRecords$1;
.super Ljava/lang/Object;
.source "SIMRecords.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v1, "onServiceConnected() : AutoPreconfigService"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAutoPreconfigService:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->InitAutopreconfig()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v1, "onServiceDisconnected() : AutoPreconfigService"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAPBound:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$402(Lcom/android/internal/telephony/uicc/SIMRecords;Z)Z

    return-void
.end method
