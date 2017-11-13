.class Lcom/android/phone/MobileNetworkSettings$3;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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
    .line 381
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$3;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 384
    const-string v0, "onTabChanged:"

    # invokes: Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$000(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$3;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/android/phone/MobileNetworkSettings;->updatePhone(I)V
    invoke-static {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->access$500(Lcom/android/phone/MobileNetworkSettings;I)V

    .line 387
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$3;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # invokes: Lcom/android/phone/MobileNetworkSettings;->updateBody()V
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$300(Lcom/android/phone/MobileNetworkSettings;)V

    .line 388
    return-void
.end method
