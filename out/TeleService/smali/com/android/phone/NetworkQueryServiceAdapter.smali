.class public Lcom/android/phone/NetworkQueryServiceAdapter;
.super Ljava/lang/Object;
.source "NetworkQueryServiceAdapter.java"


# direct methods
.method public static startNetworkQuery(Lcom/android/phone/INetworkQueryService;Lcom/android/phone/INetworkQueryServiceCallback;I)V
    .locals 0
    .param p0, "networkQueryService"    # Lcom/android/phone/INetworkQueryService;
    .param p1, "cb"    # Lcom/android/phone/INetworkQueryServiceCallback;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-interface {p0, p1, p2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;I)V

    .line 14
    return-void
.end method
