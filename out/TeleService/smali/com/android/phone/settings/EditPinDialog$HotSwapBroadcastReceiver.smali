.class Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EditPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/EditPinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotSwapBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EditPinDialog;


# direct methods
.method private constructor <init>(Lcom/android/phone/settings/EditPinDialog;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;->this$0:Lcom/android/phone/settings/EditPinDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/settings/EditPinDialog;Lcom/android/phone/settings/EditPinDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/settings/EditPinDialog;
    .param p2, "x1"    # Lcom/android/phone/settings/EditPinDialog$1;

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;-><init>(Lcom/android/phone/settings/EditPinDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 584
    if-nez p2, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    const-string v0, "android.intent.action.SIM_HOT_SWAP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-static {}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->updateIccCardStatus()V

    goto :goto_0
.end method
