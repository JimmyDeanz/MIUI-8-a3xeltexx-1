.class Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
.super Ljava/lang/Object;
.source "CarrierConfigLoader.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CarrierConfigLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierServiceConnection"
.end annotation


# instance fields
.field bound:Z

.field eventId:I

.field phoneId:I

.field service:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/phone/CarrierConfigLoader;


# direct methods
.method public constructor <init>(Lcom/android/phone/CarrierConfigLoader;II)V
    .locals 0
    .param p2, "phoneId"    # I
    .param p3, "eventId"    # I

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->this$0:Lcom/android/phone/CarrierConfigLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput p2, p0, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->phoneId:I

    .line 733
    iput p3, p0, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->eventId:I

    .line 734
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected to config app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/CarrierConfigLoader;->access$100(Ljava/lang/String;)V

    .line 739
    iput-object p2, p0, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->service:Landroid/os/IBinder;

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->bound:Z

    .line 742
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->this$0:Lcom/android/phone/CarrierConfigLoader;

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/CarrierConfigLoader;->access$1100(Lcom/android/phone/CarrierConfigLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->this$0:Lcom/android/phone/CarrierConfigLoader;

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/CarrierConfigLoader;->access$1100(Lcom/android/phone/CarrierConfigLoader;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->eventId:I

    iget v3, p0, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->phoneId:I

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 743
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->service:Landroid/os/IBinder;

    .line 749
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->bound:Z

    .line 750
    return-void
.end method
