.class Lcom/android/phone/CdmaUnavailableAlertDialog$1;
.super Ljava/lang/Object;
.source "CdmaUnavailableAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaUnavailableAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaUnavailableAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaUnavailableAlertDialog;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/phone/CdmaUnavailableAlertDialog$1;->this$0:Lcom/android/phone/CdmaUnavailableAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/phone/CdmaUnavailableAlertDialog$1;->this$0:Lcom/android/phone/CdmaUnavailableAlertDialog;

    # invokes: Lcom/android/phone/CdmaUnavailableAlertDialog;->isMobileNetworkSettingsFront()Z
    invoke-static {v1}, Lcom/android/phone/CdmaUnavailableAlertDialog;->access$000(Lcom/android/phone/CdmaUnavailableAlertDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/CdmaUnavailableAlertDialog$1;->this$0:Lcom/android/phone/CdmaUnavailableAlertDialog;

    const-class v2, Lcom/android/phone/settings/MobileNetworkSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/android/phone/CdmaUnavailableAlertDialog$1;->this$0:Lcom/android/phone/CdmaUnavailableAlertDialog;

    invoke-virtual {v1, v0}, Lcom/android/phone/CdmaUnavailableAlertDialog;->startActivity(Landroid/content/Intent;)V

    .line 57
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CdmaUnavailableAlertDialog$1;->this$0:Lcom/android/phone/CdmaUnavailableAlertDialog;

    invoke-virtual {v1}, Lcom/android/phone/CdmaUnavailableAlertDialog;->finish()V

    .line 58
    return-void
.end method
