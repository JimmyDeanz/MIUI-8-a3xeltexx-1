.class Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
.super Lcom/samsung/cpp/ICPPLocationListener$Stub;
.source "CPPositioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cpp/CPPositioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocListenerTransport"
.end annotation


# static fields
.field public static final TYPE_LOCATION_CHANGED:I = 0x1


# instance fields
.field private mListener:Lcom/samsung/cpp/CPPLocationListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/cpp/CPPositioningManager;


# direct methods
.method constructor <init>(Lcom/samsung/cpp/CPPositioningManager;Lcom/samsung/cpp/CPPLocationListener;)V
    .locals 1
    .param p2, "cppLocationListener"    # Lcom/samsung/cpp/CPPLocationListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;->this$0:Lcom/samsung/cpp/CPPositioningManager;

    invoke-direct {p0}, Lcom/samsung/cpp/ICPPLocationListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;->mListener:Lcom/samsung/cpp/CPPLocationListener;

    new-instance v0, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport$1;-><init>(Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;Lcom/samsung/cpp/CPPositioningManager;)V

    iput-object v0, p0, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .local v0, "location":Landroid/location/Location;
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;->mListener:Lcom/samsung/cpp/CPPLocationListener;

    invoke-interface {v1, v0}, Lcom/samsung/cpp/CPPLocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    const-string v1, "CPPositioningManager"

    const-string v2, "onLocationChanged location is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "CPPositioningManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocListenerTransport.onLocationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
