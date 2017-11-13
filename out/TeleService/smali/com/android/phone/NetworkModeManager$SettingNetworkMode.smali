.class Lcom/android/phone/NetworkModeManager$SettingNetworkMode;
.super Ljava/lang/Object;
.source "NetworkModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingNetworkMode"
.end annotation


# instance fields
.field defaultDataSlot:I

.field networkModes:[I

.field retryTimes:I

.field final synthetic this$0:Lcom/android/phone/NetworkModeManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/NetworkModeManager;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->this$0:Lcom/android/phone/NetworkModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NetworkModeManager;Lcom/android/phone/NetworkModeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NetworkModeManager;
    .param p2, "x1"    # Lcom/android/phone/NetworkModeManager$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;-><init>(Lcom/android/phone/NetworkModeManager;)V

    return-void
.end method
