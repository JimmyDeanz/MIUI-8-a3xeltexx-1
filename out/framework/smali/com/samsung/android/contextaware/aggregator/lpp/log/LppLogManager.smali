.class public Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
.super Ljava/lang/Object;
.source "LppLogManager.java"


# static fields
.field static FlagLog_Monitor:Z = false

.field public static final LogTypeAPDR:C = '\u0004'

.field public static final LogTypeAPDRLM:C = '\u0001'

.field public static final LogTypeGPSNmea:C = '\u0008'

.field public static final LogTypeGPSStatus:C = '\u0007'

.field public static final LogTypeLPPResult:C = '\u0002'

.field public static final LogTypeLocM:C = '\u0005'

.field public static final LogTypeMonitor:C = '\u0006'

.field public static final LogTypeSensor:C = '\u0000'

.field public static final LogTypemLPPKML_:C = '\u0003'


# instance fields
.field FlagLog_APDRLM:Z

.field FlagLog_LPPRes:Z

.field FlagLog_Sensor:Z

.field LogFolderName:Ljava/lang/String;

.field mAPDRLM_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mConfig_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mGPNMEA_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mGPSSta_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mKMLGen:Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;

.field mKMLGenRT:Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;

.field mLPPKMLRLogging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mLPPKML_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mLPPMon_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mLPPResuLogging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mLppDataProviderLnr:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

.field mSensor_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field strFromAPDR:Ljava/lang/String;

.field strFromLocM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->FlagLog_Monitor:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "SensorLog"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mSensor_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 24
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "APDR_LM"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mAPDRLM_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 25
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "LPPResultTest"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLPPResuLogging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 26
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "LPPResultKML"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLPPKML_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 27
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "LPPResultKMLRT"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLPPKMLRLogging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 28
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "LPPMonitor"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLPPMon_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 29
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "Configuration"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mConfig_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 30
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "GPSStatus"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mGPSSta_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 31
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "GPS_NMEA"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mGPNMEA_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 33
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->FlagLog_Sensor:Z

    .line 34
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->FlagLog_APDRLM:Z

    .line 35
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->FlagLog_LPPRes:Z

    .line 36
    const-string/jumbo v0, "test"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogFolderName:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogFolderName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mKMLGen:Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;

    .line 39
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogFolderName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mKMLGenRT:Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;

    .line 56
    const-string v0, "\t0 0 0 0 0"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->strFromAPDR:Ljava/lang/String;

    .line 57
    const-string v0, "\t0 0 0 0"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->strFromLocM:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLppDataProviderLnr:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    return-void
.end method

.method private LogAPDRLM(I)V
    .locals 4
    .param p1, "Logindex"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mAPDRLM_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->strFromAPDR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->strFromLocM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->addLogStream(Ljava/lang/String;)V

    .line 156
    return-void
.end method


# virtual methods
.method public AddCoordinate(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "mLocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    return-void
.end method

.method public AddGPSCoordinate(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "listGPSPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    return-void
.end method

.method public AddRTCoordinate(Landroid/location/Location;)V
    .locals 0
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 164
    return-void
.end method

.method public LogData(ILjava/lang/String;)V
    .locals 4
    .param p1, "apdrLm"    # I
    .param p2, "logData"    # Ljava/lang/String;

    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 145
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLppDataProviderLnr:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLppDataProviderLnr:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->lppStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    .prologue
    .line 67
    return-void
.end method

.method public setILppDataProviderListener(Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;)V
    .locals 0
    .param p1, "lnr"    # Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLppDataProviderLnr:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    .line 175
    return-void
.end method

.method protected setLogName(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogFolderName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
