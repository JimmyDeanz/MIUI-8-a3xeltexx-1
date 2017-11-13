.class Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QcFailHistory"
.end annotation


# instance fields
.field apIndex:I

.field avoidance:Z

.field bssid:Ljava/lang/String;

.field bytes:I

.field currentDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field dataRate:I

.field detection:Z

.field error:I

.field line:I

.field netstat:Ljava/lang/String;

.field qcId:I

.field qcStep:I

.field qcTrigger:I

.field qcTriggerTemp:I

.field qcUrlIndex:I

.field rssi:I

.field ssid:Ljava/lang/String;

.field state:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

.field time:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1050
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    .line 1052
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    .line 1053
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 1054
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 1055
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 1056
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcUrlIndex:I

    .line 1057
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 1058
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 1059
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    .line 1060
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    .line 1061
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    .line 1062
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    .line 1063
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    .line 1064
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    .line 1065
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    .line 1066
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 1067
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->currentDnsList:Ljava/util/List;

    .line 1068
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->netstat:Ljava/lang/String;

    .line 1069
    return-void
.end method
