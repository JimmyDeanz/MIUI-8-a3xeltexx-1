.class public enum Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
.super Ljava/lang/Enum;
.source "MultiModeContextList.java"

# interfaces
.implements Lcom/samsung/android/contextaware/IParserHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/MultiModeContextList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "MultiModeContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;",
        ">;",
        "Lcom/samsung/android/contextaware/IParserHandler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

.field public static final enum SENSORHUB_RUNNER_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

.field public static final enum SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

.field public static final enum SENSORHUB_RUNNER_STEP_LEVEL_MONITOR:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$1;

    const-string v1, "SENSORHUB_RUNNER_ACTIVITY_TRACKER"

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    .line 55
    new-instance v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$2;

    const-string v1, "SENSORHUB_RUNNER_STEP_LEVEL_MONITOR"

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_STEP_LEVEL_MONITOR:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_STEP_LEVEL_MONITOR:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    .line 66
    new-instance v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$3;

    const-string v1, "SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR"

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    sget-object v1, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_STEP_LEVEL_MONITOR:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->$VALUES:[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput-object p3, p0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/MultiModeContextList$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/samsung/android/contextaware/MultiModeContextList$1;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->$VALUES:[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getParserHandler()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method
