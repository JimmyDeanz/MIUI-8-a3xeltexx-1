.class Lcom/android/server/location/GpsStatusListenerHelper$5;
.super Ljava/lang/Object;
.source "GpsStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GpsStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsStatusListenerHelper;

.field final synthetic val$nmea:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    iput-wide p2, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$timestamp:J

    iput-object p4, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$nmea:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsStatusListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$timestamp:J

    iget-object v1, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->val$nmea:Ljava/lang/String;

    invoke-interface {p1, v2, v3, v1}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 112
    iget-object v1, p0, Lcom/android/server/location/GpsStatusListenerHelper$5;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/location/GpsStatusListenerHelper;->removeListener(Landroid/os/IInterface;)V

    goto :goto_0
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    check-cast p1, Landroid/location/IGpsStatusListener;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$5;->execute(Landroid/location/IGpsStatusListener;)V

    return-void
.end method
