.class Lcom/android/phone/MiuiErrorDialogActivity$3;
.super Ljava/lang/Object;
.source "MiuiErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiErrorDialogActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiErrorDialogActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/MiuiErrorDialogActivity$3;->this$0:Lcom/android/phone/MiuiErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/phone/MiuiErrorDialogActivity$3;->this$0:Lcom/android/phone/MiuiErrorDialogActivity;

    # invokes: Lcom/android/phone/MiuiErrorDialogActivity;->isMobileNetworkSettingsFront()Z
    invoke-static {v1}, Lcom/android/phone/MiuiErrorDialogActivity;->access$000(Lcom/android/phone/MiuiErrorDialogActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/MiuiErrorDialogActivity$3;->this$0:Lcom/android/phone/MiuiErrorDialogActivity;

    const-class v2, Lcom/android/phone/settings/MobileNetworkSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/android/phone/MiuiErrorDialogActivity$3;->this$0:Lcom/android/phone/MiuiErrorDialogActivity;

    invoke-virtual {v1, v0}, Lcom/android/phone/MiuiErrorDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MiuiErrorDialogActivity$3;->this$0:Lcom/android/phone/MiuiErrorDialogActivity;

    invoke-virtual {v1}, Lcom/android/phone/MiuiErrorDialogActivity;->finish()V

    .line 67
    return-void
.end method
