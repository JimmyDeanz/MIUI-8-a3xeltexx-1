.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
.super Lcom/android/internal/util/StateMachine;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassiveSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassiveListener;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;
    }
.end annotation


# instance fields
.field private lastLoc:Landroid/location/Location;

.field private mListening:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

.field private mLocationMgr:Landroid/location/LocationManager;

.field private mPassGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

.field private final mPassLnr:Landroid/location/LocationListener;

.field private mPause:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;

.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1354
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .line 1356
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 1347
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;

    .line 1348
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassiveListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassiveListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassLnr:Landroid/location/LocationListener;

    .line 1349
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->lastLoc:Landroid/location/Location;

    .line 1350
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mListening:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    .line 1351
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPause:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;

    .line 1352
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

    .line 1358
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mListening:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    .line 1359
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mListening:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->addState(Lcom/android/internal/util/State;)V

    .line 1361
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPause:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;

    .line 1362
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPause:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->addState(Lcom/android/internal/util/State;)V

    .line 1364
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

    .line 1365
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->addState(Lcom/android/internal/util/State;)V

    .line 1367
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mListening:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1368
    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;

    .line 1369
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->exit()V

    return-void
.end method

.method static synthetic access$6600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    .param p1, "x1"    # Landroid/location/LocationManager;

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassLnr:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPause:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1345
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->lastLoc:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->lastLoc:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1345
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mListening:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1345
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1345
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1345
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->getLastLoc()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method private exit()V
    .locals 2

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassLnr:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1558
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->quit()V

    .line 1559
    return-void
.end method

.method private getLastLoc()Landroid/location/Location;
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->lastLoc:Landroid/location/Location;

    return-object v0
.end method
