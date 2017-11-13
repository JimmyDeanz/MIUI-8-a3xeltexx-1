.class Lcom/android/phone/MobileNetworkSettings$PhoneChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$PhoneChangeReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p2, "x1"    # Lcom/android/phone/MobileNetworkSettings$1;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings$PhoneChangeReceiver;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 159
    const-string v0, "onReceive:"

    # invokes: Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$000(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$PhoneChangeReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iput-object v1, v0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 162
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$PhoneChangeReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iput-object v1, v0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 163
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$PhoneChangeReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # invokes: Lcom/android/phone/MobileNetworkSettings;->updateBody()V
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$300(Lcom/android/phone/MobileNetworkSettings;)V

    .line 164
    return-void
.end method
