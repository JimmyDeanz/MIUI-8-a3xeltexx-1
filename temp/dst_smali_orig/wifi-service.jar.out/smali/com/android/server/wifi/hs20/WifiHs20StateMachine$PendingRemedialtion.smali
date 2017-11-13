.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;
.super Ljava/lang/Object;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingRemedialtion"
.end annotation


# instance fields
.field credId:I

.field isRemediationPending:Z

.field methodType:I

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;-><init>()V

    return-void
.end method
