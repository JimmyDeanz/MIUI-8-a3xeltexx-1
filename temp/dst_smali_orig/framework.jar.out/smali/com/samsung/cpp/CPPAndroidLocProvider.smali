.class public Lcom/samsung/cpp/CPPAndroidLocProvider;
.super Ljava/lang/Object;
.source "CPPAndroidLocProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CPPAndroidLocProvider"


# instance fields
.field private final mLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/cpp/ICPPLocationListener;",
            "Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CPPAndroidLocProvider"

    const-string v1, "CPPAndroidLocProvider : constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/cpp/CPPAndroidLocProvider;->mLocListeners:Ljava/util/HashMap;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/cpp/CPPAndroidLocProvider;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public requestLocationUpdates(IILcom/samsung/cpp/ICPPLocationListener;Ljava/lang/String;)V
    .locals 11
    .param p1, "interval"    # I
    .param p2, "typeOfLoc"    # I
    .param p3, "cppLocListener"    # Lcom/samsung/cpp/ICPPLocationListener;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    const-string v0, "CPPAndroidLocProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLocationUpdates  app name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Interval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Provider(0-GPS, 1-google NLP) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    const-string v0, "CPPAndroidLocProvider"

    const-string v1, "parameters are not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v5, 0x0

    .local v5, "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    iget-object v10, p0, Lcom/samsung/cpp/CPPAndroidLocProvider;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_0
    iget-object v0, p0, Lcom/samsung/cpp/CPPAndroidLocProvider;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    move-object v6, v5

    .end local v5    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    .local v6, "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    :goto_1
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/cpp/ICPPLocationListener;

    .local v9, "record":Lcom/samsung/cpp/ICPPLocationListener;
    invoke-interface {v9}, Lcom/samsung/cpp/ICPPLocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p3}, Lcom/samsung/cpp/ICPPLocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/cpp/CPPAndroidLocProvider;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;

    .end local v6    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    .restart local v5    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    :goto_2
    move-object v6, v5

    .end local v5    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    .restart local v6    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    goto :goto_1

    .end local v9    # "record":Lcom/samsung/cpp/ICPPLocationListener;
    :cond_1
    if-nez v6, :cond_4

    new-instance v5, Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;

    invoke-direct {v5, p3}, Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;-><init>(Lcom/samsung/cpp/ICPPLocationListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v6    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    .restart local v5    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    :try_start_2
    iget-object v0, p0, Lcom/samsung/cpp/CPPAndroidLocProvider;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CPPAndroidLocProvider"

    const-string v1, "requestLocationUpdates - new android Location listener created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-nez p2, :cond_2

    :try_start_3
    iget-object v0, p0, Lcom/samsung/cpp/CPPAndroidLocProvider;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    int-to-long v2, p1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_2
    const/4 v0, 0x1

    if-ne v0, p2, :cond_3

    iget-object v0, p0, Lcom/samsung/cpp/CPPAndroidLocProvider;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    int-to-long v2, p1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_4
    :try_start_4
    monitor-exit v10

    goto :goto_0

    .end local v8    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    :goto_5
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .end local v5    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    .restart local v6    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/samsung/cpp/CPPAndroidLocProvider;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const-string v0, "CPPAndroidLocProvider"

    const-string v1, "requestLocationUpdates: CallBack already present..re-registering "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v5, v6

    .end local v6    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    .restart local v5    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    goto :goto_3

    .end local v5    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    .restart local v6    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/SecurityException;
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v5, v6

    .end local v6    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    .restart local v5    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    goto :goto_3

    .end local v7    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/SecurityException;
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .end local v5    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    .end local v7    # "e":Ljava/lang/SecurityException;
    .restart local v6    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    :catchall_1
    move-exception v0

    move-object v5, v6

    .end local v6    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    .restart local v5    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    goto :goto_5

    .end local v5    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    .restart local v6    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    .restart local v9    # "record":Lcom/samsung/cpp/ICPPLocationListener;
    :cond_5
    move-object v5, v6

    .end local v6    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    .restart local v5    # "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    goto :goto_2
.end method

.method public stopLocationUpdates(Lcom/samsung/cpp/ICPPLocationListener;)V
    .locals 8
    .param p1, "cppLocListener"    # Lcom/samsung/cpp/ICPPLocationListener;

    .prologue
    const-string v5, "CPPAndroidLocProvider"

    const-string v6, "stopLocationUpdates... "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "LocListener":Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;
    iget-object v6, p0, Lcom/samsung/cpp/CPPAndroidLocProvider;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/samsung/cpp/CPPAndroidLocProvider;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/cpp/ICPPLocationListener;

    .local v4, "record":Lcom/samsung/cpp/ICPPLocationListener;
    invoke-interface {v4}, Lcom/samsung/cpp/ICPPLocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p1}, Lcom/samsung/cpp/ICPPLocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Lcom/samsung/cpp/CPPAndroidLocProvider;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/cpp/CPPAndroidLocProvider$androidLocListener;

    move-object v1, v0

    goto :goto_0

    .end local v4    # "record":Lcom/samsung/cpp/ICPPLocationListener;
    :cond_1
    if-nez v1, :cond_2

    const-string v5, "CPPAndroidLocProvider"

    const-string v7, "All ready stopped location updates"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/samsung/cpp/CPPAndroidLocProvider;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/SecurityException;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
