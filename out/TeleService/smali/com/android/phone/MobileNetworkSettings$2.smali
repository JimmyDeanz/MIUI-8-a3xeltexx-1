.class Lcom/android/phone/MobileNetworkSettings$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 262
    const-string v0, "onSubscriptionsChanged:"

    # invokes: Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$000(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # invokes: Lcom/android/phone/MobileNetworkSettings;->initializeSubscriptions()V
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$400(Lcom/android/phone/MobileNetworkSettings;)V

    .line 264
    return-void
.end method
