.class public Lcom/samsung/cpp/CPPositioningService;
.super Lcom/samsung/cpp/ICPPositioningService$Stub;
.source "CPPositioningService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;,
        Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;
    }
.end annotation


# static fields
.field public static final ERROR_EXCEPTION:I = -0x4

.field public static final ERROR_ILLEGAL_ARGUMENT:I = -0x2

.field private static final MSG_DEREGISTER_ANDROID_GEO_FENCE_UPDATE:I = 0x8

.field private static final MSG_DEREGISTER_CP_GEO_FENCE_UPDATE:I = 0x6

.field private static final MSG_REGISTER_ANDROID_GEO_FENCE_UPDATE:I = 0x7

.field private static final MSG_REGISTER_CP_GEO_FENCE_UPDATE:I = 0x5

.field private static final MSG_REQUEST_ANDROID_LOCATION_UPDATE:I = 0x1

.field private static final MSG_REQUEST_CP_LOCATION_UPDATE:I = 0x3

.field private static final MSG_STOP_ANDROID_LOCATION_UPDATE:I = 0x2

.field private static final MSG_STOP_CP_LOCATION_UPDATE:I = 0x4

.field public static final OPERATION_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CPPositioningService"


# instance fields
.field private mAndroidLocProvider:Lcom/samsung/cpp/CPPAndroidLocProvider;

.field private mContext:Landroid/content/Context;

.field private mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;

.field private mHandler:Landroid/os/Handler;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/samsung/cpp/ICPPositioningService$Stub;-><init>()V

    .line 360
    new-instance v0, Lcom/samsung/cpp/CPPositioningService$1;

    invoke-direct {v0, p0}, Lcom/samsung/cpp/CPPositioningService$1;-><init>(Lcom/samsung/cpp/CPPositioningService;)V

    iput-object v0, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    .line 62
    const-string v0, "CPPositioningService"

    const-string v1, "CPPositioningService : constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-object p1, p0, Lcom/samsung/cpp/CPPositioningService;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/samsung/cpp/CPPositioningService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/cpp/CPPositioningService;->mLocationManager:Landroid/location/LocationManager;

    .line 67
    new-instance v0, Lcom/samsung/cpp/CPPProvider;

    invoke-direct {v0, p1}, Lcom/samsung/cpp/CPPProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;

    .line 68
    new-instance v0, Lcom/samsung/cpp/CPPAndroidLocProvider;

    invoke-direct {v0, p1}, Lcom/samsung/cpp/CPPAndroidLocProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/cpp/CPPositioningService;->mAndroidLocProvider:Lcom/samsung/cpp/CPPAndroidLocProvider;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/cpp/CPPositioningService;)Lcom/samsung/cpp/CPPAndroidLocProvider;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPositioningService;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/cpp/CPPositioningService;->mAndroidLocProvider:Lcom/samsung/cpp/CPPAndroidLocProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/cpp/CPPositioningService;)Lcom/samsung/cpp/CPPProvider;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPositioningService;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;

    return-object v0
.end method


# virtual methods
.method public deRegisterCPGeoFence(I)I
    .locals 4
    .param p1, "clientID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 340
    const-string v1, "CPPositioningService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCPGeoFence... (clientID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;

    invoke-virtual {v1}, Lcom/samsung/cpp/CPPProvider;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    const-string v1, "CPPositioningService"

    const-string v2, "deRegisterGeoFence : CPP Service is not enabled yet. ERROR_EXCEPTION"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v1, -0x4

    .line 354
    :goto_0
    return v1

    .line 347
    :cond_0
    if-nez p1, :cond_1

    .line 348
    const-string v1, "CPPositioningService"

    const-string v2, "deRegisterGeoFence : parameter is not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v1, -0x2

    goto :goto_0

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 352
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 353
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 354
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deRegisterGeoFence(Lcom/samsung/cpp/IGeoFenceListener;)I
    .locals 3
    .param p1, "listener"    # Lcom/samsung/cpp/IGeoFenceListener;

    .prologue
    .line 276
    const-string v1, "CPPositioningService"

    const-string v2, "deRegisterGeoFence... "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;

    invoke-virtual {v1}, Lcom/samsung/cpp/CPPProvider;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    const-string v1, "CPPositioningService"

    const-string v2, "deRegisterGeoFence : CPP Service is not enabled yet. ERROR_EXCEPTION"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, -0x4

    .line 290
    :goto_0
    return v1

    .line 283
    :cond_0
    if-nez p1, :cond_1

    .line 284
    const-string v1, "CPPositioningService"

    const-string v2, "deRegisterGeoFence: parameters are not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v1, -0x2

    goto :goto_0

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 288
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 289
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 290
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 53
    invoke-super {p0}, Lcom/samsung/cpp/ICPPositioningService$Stub;->finalize()V

    .line 54
    const-string v0, "CPPositioningService"

    const-string v1, "finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public registerCPGeoFence(DDIII)I
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "geoMode"    # I
    .param p6, "radius"    # I
    .param p7, "period"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 311
    const-string v1, "CPPositioningService"

    const-string v2, "registerCPGeoFence... "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;

    invoke-virtual {v1}, Lcom/samsung/cpp/CPPProvider;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    const-string v1, "CPPositioningService"

    const-string v2, "registerCPGeoFence : CPP Service is not enabled yet. ERROR_EXCEPTION"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, -0x4

    .line 336
    :goto_0
    return v1

    .line 318
    :cond_0
    cmpl-double v1, p1, v4

    if-nez v1, :cond_1

    cmpl-double v1, p3, v4

    if-nez v1, :cond_1

    if-nez p5, :cond_1

    if-nez p6, :cond_1

    if-nez p7, :cond_1

    .line 319
    const-string v1, "CPPositioningService"

    const-string v2, "registerCPGeoFence : parameters are not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v1, -0x2

    goto :goto_0

    .line 323
    :cond_1
    const-string v1, "CPPositioningService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCPGeoFence() latitude : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", longitude : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", geoMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", radius : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", period : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v0, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;

    invoke-direct {v0}, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;-><init>()V

    .line 327
    .local v0, "input":Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;
    iput p5, v0, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mGeoMode:I

    .line 328
    iput p6, v0, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mRadius:I

    .line 329
    iput p7, v0, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mPeriod:I

    .line 330
    iput-wide p3, v0, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mLongitude:D

    .line 331
    iput-wide p1, v0, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mLatitude:D

    .line 333
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;

    invoke-virtual {v1, v0}, Lcom/samsung/cpp/CPPProvider;->insertGeoFencePOI(Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;)I

    move-result v1

    iput v1, v0, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mKey:I

    .line 334
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 336
    iget v1, v0, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mKey:I

    goto :goto_0
.end method

.method public registerGeoFence(DDIILcom/samsung/cpp/IGeoFenceListener;)I
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # I
    .param p6, "typeOfEvents"    # I
    .param p7, "listener"    # Lcom/samsung/cpp/IGeoFenceListener;

    .prologue
    .line 239
    const-string v2, "CPPositioningService"

    const-string v3, "registerGeoFence... "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;

    invoke-virtual {v2}, Lcom/samsung/cpp/CPPProvider;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    const-string v2, "CPPositioningService"

    const-string v3, "registerGeoFence : CPP Service is not enabled yet. ERROR_EXCEPTION"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v2, -0x4

    .line 263
    .end local p7    # "listener":Lcom/samsung/cpp/IGeoFenceListener;
    :goto_0
    return v2

    .line 246
    .restart local p7    # "listener":Lcom/samsung/cpp/IGeoFenceListener;
    :cond_0
    if-nez p7, :cond_1

    .line 247
    const-string v2, "CPPositioningService"

    const-string v3, "registerGeoFence : parameters are not valid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v2, -0x2

    goto :goto_0

    .line 251
    :cond_1
    const-string v2, "CPPositioningService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerGeoFence latitude : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " longitude:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " radius: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " typeOfEvents: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 255
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 256
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "latitude"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 257
    const-string v2, "longitude"

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 258
    const-string v2, "radius"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v2, "typeOfEvents"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    const-string v2, "IGeoFenceListener"

    check-cast p7, Landroid/os/Parcelable;

    .end local p7    # "listener":Lcom/samsung/cpp/IGeoFenceListener;
    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 261
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 262
    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public requestCPLocationUpdates(IIILcom/samsung/cpp/ICPPLocationListener;)I
    .locals 5
    .param p1, "interval"    # I
    .param p2, "minDist"    # I
    .param p3, "mode"    # I
    .param p4, "cppLocListener"    # Lcom/samsung/cpp/ICPPLocationListener;

    .prologue
    const/4 v1, 0x0

    .line 168
    const-string v2, "CPPositioningService"

    const-string v3, "requestCPLocationUpdates... "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;

    invoke-virtual {v2}, Lcom/samsung/cpp/CPPProvider;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    const-string v1, "CPPositioningService"

    const-string v2, "requestCPLocationUpdates : CPP Service is not enabled yet. ERROR_EXCEPTION"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, -0x4

    .line 190
    :goto_0
    return v1

    .line 175
    :cond_0
    if-nez p4, :cond_1

    .line 176
    const-string v1, "CPPositioningService"

    const-string v2, "requestCPLocationUpdates: parameters are not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, -0x2

    goto :goto_0

    .line 180
    :cond_1
    const-string v2, "CPPositioningService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCPLocationUpdates Interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Listener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;

    invoke-direct {v0}, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;-><init>()V

    .line 184
    .local v0, "input":Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;
    iput p1, v0, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;->mInterval:I

    .line 185
    iput p2, v0, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;->mMinDist:I

    .line 186
    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;

    iput v1, v0, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;->mMode:I

    .line 187
    iput-object p4, v0, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;->mCppLocListener:Lcom/samsung/cpp/ICPPLocationListener;

    .line 189
    iget-object v2, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public requestLocationUpdates(IILcom/samsung/cpp/ICPPLocationListener;Ljava/lang/String;)I
    .locals 4
    .param p1, "interval"    # I
    .param p2, "typeOfLoc"    # I
    .param p3, "cppLocListener"    # Lcom/samsung/cpp/ICPPLocationListener;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v1, "CPPositioningService"

    const-string v2, "requestLocationUpdates... "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;

    invoke-virtual {v1}, Lcom/samsung/cpp/CPPProvider;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const-string v1, "CPPositioningService"

    const-string v2, "requestLocationUpdates : CPP Service is not enabled yet. ERROR_EXCEPTION"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v1, -0x4

    .line 120
    :goto_0
    return v1

    .line 107
    :cond_0
    if-nez p3, :cond_1

    .line 108
    const-string v1, "CPPositioningService"

    const-string v2, "requestLocationUpdates: parameters are not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, -0x2

    goto :goto_0

    .line 112
    :cond_1
    const-string v1, "CPPositioningService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLocationUpdates called from App : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Interval : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Provider(0-GPS, 1-google NLP) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Listener :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 116
    .local v0, "msg":Landroid/os/Message;
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 118
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 119
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopCPLocationUpdates(Lcom/samsung/cpp/ICPPLocationListener;)I
    .locals 4
    .param p1, "cppLocListener"    # Lcom/samsung/cpp/ICPPLocationListener;

    .prologue
    .line 205
    const-string v1, "CPPositioningService"

    const-string v2, "stopCPLocationUpdates... "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;

    invoke-virtual {v1}, Lcom/samsung/cpp/CPPProvider;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    const-string v1, "CPPositioningService"

    const-string v2, "stopCPLocationUpdates : CPP Service is not enabled yet. ERROR_EXCEPTION"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v1, -0x4

    .line 222
    :goto_0
    return v1

    .line 212
    :cond_0
    if-nez p1, :cond_1

    .line 213
    const-string v1, "CPPositioningService"

    const-string v2, "stopCPLocationUpdates: parameters are not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v1, -0x2

    goto :goto_0

    .line 217
    :cond_1
    const-string v1, "CPPositioningService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopCPLocationUpdates: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 220
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 221
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopLocationUpdates(Lcom/samsung/cpp/ICPPLocationListener;)I
    .locals 3
    .param p1, "cppLocListener"    # Lcom/samsung/cpp/ICPPLocationListener;

    .prologue
    .line 135
    const-string v1, "CPPositioningService"

    const-string v2, "stopLocationUpdates... "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;

    invoke-virtual {v1}, Lcom/samsung/cpp/CPPProvider;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const-string v1, "CPPositioningService"

    const-string v2, "stopLocationUpdates : CPP Service is not enabled yet. ERROR_EXCEPTION"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v1, -0x4

    .line 149
    :goto_0
    return v1

    .line 142
    :cond_0
    if-nez p1, :cond_1

    .line 143
    const-string v1, "CPPositioningService"

    const-string v2, "parameters are not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, -0x2

    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 147
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/samsung/cpp/CPPositioningService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "CPPositioningService"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method
