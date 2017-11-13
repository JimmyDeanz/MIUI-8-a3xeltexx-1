.class final enum Lcom/android/server/wifi/WifiStateMachine$WakeLockType;
.super Ljava/lang/Enum;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WakeLockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/WifiStateMachine$WakeLockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

.field public static final enum WLAN_CTRL_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

.field public static final enum WLAN_EVT_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

.field public static final enum WLAN_OOB_IRQ_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

.field public static final enum WLAN_RX_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

.field public static final enum WLAN_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

.field public static final enum WLAN_WD_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    const-string v1, "WLAN_WAKE"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->WLAN_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    const-string v1, "WLAN_RX_WAKE"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->WLAN_RX_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    const-string v1, "WLAN_CTRL_WAKE"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->WLAN_CTRL_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    const-string v1, "WLAN_WD_WAKE"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->WLAN_WD_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    const-string v1, "WLAN_OOB_IRQ_WAKE"

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->WLAN_OOB_IRQ_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    const-string v1, "WLAN_EVT_WAKE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->WLAN_EVT_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    sget-object v1, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->WLAN_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->WLAN_RX_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->WLAN_CTRL_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->WLAN_WD_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->WLAN_OOB_IRQ_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->WLAN_EVT_WAKE:Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->$VALUES:[Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/WifiStateMachine$WakeLockType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/WifiStateMachine$WakeLockType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->$VALUES:[Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    invoke-virtual {v0}, [Lcom/android/server/wifi/WifiStateMachine$WakeLockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/WifiStateMachine$WakeLockType;

    return-object v0
.end method
