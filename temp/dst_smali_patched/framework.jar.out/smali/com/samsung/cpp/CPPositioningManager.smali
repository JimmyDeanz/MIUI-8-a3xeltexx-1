.class public Lcom/samsung/cpp/CPPositioningManager;
.super Ljava/lang/Object;
.source "CPPositioningManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
    }
.end annotation


# static fields
.field public static final ERROR_EXCEPTION:I = -0x4

.field public static final ERROR_ILLEGAL_ARGUMENT:I = -0x2

.field public static final GEOFENCE_DWELL:I = 0x3

.field public static final GEOFENCE_ID:Ljava/lang/String; = "clientID"

.field public static final GEOFENCE_INBOUND:I = 0x1

.field public static final GEOFENCE_OUTBOUND:I = 0x2

.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final INTENT_CLM_TT_GEO_FENCE_UPDATE:Ljava/lang/String; = "android.intent.action.ACTION_CLM_TT_GEO_FENCE_UPDATE"

.field public static final LOCATION_TYPE_CELL_BASED:I = 0x0

.field public static final LOCATION_TYPE_COMBINED:I = 0x1

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field public static final OPERATION_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CPPositioningManager"


# instance fields
.field private mLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/cpp/CPPLocationListener;",
            "Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/samsung/cpp/ICPPositioningService;


# direct methods
.method public constructor <init>(Lcom/samsung/cpp/ICPPositioningService;)V
    .locals 2
    .param p1, "service"    # Lcom/samsung/cpp/ICPPositioningService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/cpp/CPPositioningManager;->mLocListeners:Ljava/util/HashMap;

    const-string v0, "CPPositioningManager"

    const-string v1, "CPPositioningManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/cpp/CPPositioningManager;->mService:Lcom/samsung/cpp/ICPPositioningService;

    return-void
.end method


# virtual methods
.method public deRegisterCPGeoFence(I)I
    .locals 4
    .param p1, "clientID"    # I

    .prologue
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningManager;->mService:Lcom/samsung/cpp/ICPPositioningService;

    if-nez v1, :cond_0

    const-string v1, "CPPositioningManager"

    const-string v2, "deRegisterCPGeoFence: service is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    :goto_0
    return v1

    :cond_0
    :try_start_0
    const-string v1, "CPPositioningManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deRegisterCPGeoFence : cliendID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningManager;->mService:Lcom/samsung/cpp/ICPPositioningService;

    invoke-interface {v1, p1}, Lcom/samsung/cpp/ICPPositioningService;->deRegisterCPGeoFence(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CPPositioningManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deRegisterCPGeoFence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    goto :goto_0
.end method

.method public registerCPGeoFence(DDIII)I
    .locals 11
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "geoMode"    # I
    .param p6, "radius"    # I
    .param p7, "period"    # I

    .prologue
    iget-object v3, p0, Lcom/samsung/cpp/CPPositioningManager;->mService:Lcom/samsung/cpp/ICPPositioningService;

    if-nez v3, :cond_0

    const-string v3, "CPPositioningManager"

    const-string v4, "registerCPGeoFence: service is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    :goto_0
    return v3

    :cond_0
    :try_start_0
    const-string v3, "CPPositioningManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerCPGeoFence : latitude("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), longitude("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), geoMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), radius("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), period("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/cpp/CPPositioningManager;->mService:Lcom/samsung/cpp/ICPPositioningService;

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/samsung/cpp/ICPPositioningService;->registerCPGeoFence(DDIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CPPositioningManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerCPGeoFence: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x4

    goto :goto_0
.end method

.method public requestCPLocationUpdates(IIILcom/samsung/cpp/CPPLocationListener;)I
    .locals 6
    .param p1, "interval"    # I
    .param p2, "minDist"    # I
    .param p3, "mode"    # I
    .param p4, "cppCpLocListener"    # Lcom/samsung/cpp/CPPLocationListener;

    .prologue
    const/4 v2, -0x2

    iget-object v3, p0, Lcom/samsung/cpp/CPPositioningManager;->mService:Lcom/samsung/cpp/ICPPositioningService;

    if-nez v3, :cond_0

    const-string v3, "CPPositioningManager"

    const-string v4, "requestCPLocationUpdates: service is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    if-nez p4, :cond_1

    const-string v3, "CPPositioningManager"

    const-string v4, "requestCPLocationUpdates: listener parameter is not vaild"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/cpp/CPPositioningManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;

    .local v1, "transport":Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
    invoke-direct {v1, p0, p4}, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;-><init>(Lcom/samsung/cpp/CPPositioningManager;Lcom/samsung/cpp/CPPLocationListener;)V

    .restart local v1    # "transport":Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
    :cond_2
    const-string v2, "CPPositioningManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestCPLocationUpdates : interval("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), minDist("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), mode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningManager;->mService:Lcom/samsung/cpp/ICPPositioningService;

    invoke-interface {v2, p1, p2, p3, v1}, Lcom/samsung/cpp/ICPPositioningService;->requestCPLocationUpdates(IIILcom/samsung/cpp/ICPPLocationListener;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .end local v1    # "transport":Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CPPositioningManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCPLocationUpdates: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    goto :goto_0
.end method

.method public requestLocationUpdates(IILcom/samsung/cpp/CPPLocationListener;Ljava/lang/String;)I
    .locals 6
    .param p1, "interval"    # I
    .param p2, "typeOfLoc"    # I
    .param p3, "cppLocListener"    # Lcom/samsung/cpp/CPPLocationListener;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x2

    iget-object v3, p0, Lcom/samsung/cpp/CPPositioningManager;->mService:Lcom/samsung/cpp/ICPPositioningService;

    if-nez v3, :cond_0

    const-string v3, "CPPositioningManager"

    const-string v4, "requestLocationUpdates: service is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    if-nez p3, :cond_1

    const-string v3, "CPPositioningManager"

    const-string v4, "requestLocationUpdates: listener parameter is not vaild"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/cpp/CPPositioningManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;

    .local v1, "transport":Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
    invoke-direct {v1, p0, p3}, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;-><init>(Lcom/samsung/cpp/CPPositioningManager;Lcom/samsung/cpp/CPPLocationListener;)V

    .restart local v1    # "transport":Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
    :cond_2
    const-string v2, "CPPositioningManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestLocationUpdates : interval("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), typeOfLoc("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), pkgName("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningManager;->mService:Lcom/samsung/cpp/ICPPositioningService;

    invoke-interface {v2, p1, p2, v1, p4}, Lcom/samsung/cpp/ICPPositioningService;->requestLocationUpdates(IILcom/samsung/cpp/ICPPLocationListener;Ljava/lang/String;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .end local v1    # "transport":Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CPPositioningManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLocationUpdates: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    goto :goto_0
.end method

.method public stopCPLocationUpdates(Lcom/samsung/cpp/CPPLocationListener;)I
    .locals 6
    .param p1, "cpplocListener"    # Lcom/samsung/cpp/CPPLocationListener;

    .prologue
    const/4 v2, -0x2

    const/4 v3, -0x4

    iget-object v4, p0, Lcom/samsung/cpp/CPPositioningManager;->mService:Lcom/samsung/cpp/ICPPositioningService;

    if-nez v4, :cond_0

    const-string v3, "CPPositioningManager"

    const-string v4, "stopCPLocationUpdates: service is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string v3, "CPPositioningManager"

    const-string v4, "stopCPLocationUpdates: listener parameter is not vaild"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;

    .local v1, "transport":Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
    if-nez v1, :cond_2

    const-string v2, "CPPositioningManager"

    const-string v4, "stopCPLocationUpdates: Already stopped location"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_2
    const-string v2, "CPPositioningManager"

    const-string v4, "stopCPLocationUpdates"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningManager;->mService:Lcom/samsung/cpp/ICPPositioningService;

    invoke-interface {v2, v1}, Lcom/samsung/cpp/ICPPositioningService;->stopCPLocationUpdates(Lcom/samsung/cpp/ICPPLocationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .end local v1    # "transport":Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CPPositioningManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopCPLocationUpdates: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0
.end method

.method public stopLocationUpdates(Lcom/samsung/cpp/CPPLocationListener;)I
    .locals 6
    .param p1, "cppLocListener"    # Lcom/samsung/cpp/CPPLocationListener;

    .prologue
    const/4 v2, -0x2

    const/4 v3, -0x4

    iget-object v4, p0, Lcom/samsung/cpp/CPPositioningManager;->mService:Lcom/samsung/cpp/ICPPositioningService;

    if-nez v4, :cond_0

    const-string v3, "CPPositioningManager"

    const-string v4, "stopLocationUpdates: service is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string v3, "CPPositioningManager"

    const-string v4, "stopLocationUpdates: listener parameter is not vaild"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;

    .local v1, "transport":Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
    if-nez v1, :cond_2

    const-string v2, "CPPositioningManager"

    const-string v4, "stopLocationUpdates: Already stopped location"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_2
    const-string v2, "CPPositioningManager"

    const-string v4, "stopLocationUpdates"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningManager;->mService:Lcom/samsung/cpp/ICPPositioningService;

    invoke-interface {v2, v1}, Lcom/samsung/cpp/ICPPositioningService;->stopLocationUpdates(Lcom/samsung/cpp/ICPPLocationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .end local v1    # "transport":Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CPPositioningManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopLocationUpdates: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0
.end method
