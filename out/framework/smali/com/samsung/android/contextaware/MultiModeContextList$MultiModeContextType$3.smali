.class final enum Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$3;
.super Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
.source "MultiModeContextList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "x0"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/MultiModeContextList$1;)V

    return-void
.end method


# virtual methods
.method public final getParserHandler()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;

    move-result-object v0

    return-object v0
.end method
