.class Lcom/android/incallui/view/SimCardPickDialog$2;
.super Ljava/lang/Object;
.source "SimCardPickDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/view/SimCardPickDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/SimCardPickDialog;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/SimCardPickDialog;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/incallui/view/SimCardPickDialog$2;->this$0:Lcom/android/incallui/view/SimCardPickDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/incallui/view/SimCardPickDialog$2;->this$0:Lcom/android/incallui/view/SimCardPickDialog;

    # getter for: Lcom/android/incallui/view/SimCardPickDialog;->mSelectorAdapter:Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;
    invoke-static {v1}, Lcom/android/incallui/view/SimCardPickDialog;->access$100(Lcom/android/incallui/view/SimCardPickDialog;)Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->getItem(I)Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;

    move-result-object v0

    .line 106
    .local v0, "info":Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;
    invoke-virtual {v0}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/incallui/view/SimCardPickDialog$2;->this$0:Lcom/android/incallui/view/SimCardPickDialog;

    # invokes: Lcom/android/incallui/view/SimCardPickDialog;->accountSelectStateRecord(Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;)V
    invoke-static {v1, v0}, Lcom/android/incallui/view/SimCardPickDialog;->access$200(Lcom/android/incallui/view/SimCardPickDialog;Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;)V

    .line 108
    iget-object v1, p0, Lcom/android/incallui/view/SimCardPickDialog$2;->this$0:Lcom/android/incallui/view/SimCardPickDialog;

    invoke-virtual {v0}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    # invokes: Lcom/android/incallui/view/SimCardPickDialog;->onPickSimCard(Landroid/telecom/PhoneAccountHandle;)V
    invoke-static {v1, v2}, Lcom/android/incallui/view/SimCardPickDialog;->access$300(Lcom/android/incallui/view/SimCardPickDialog;Landroid/telecom/PhoneAccountHandle;)V

    .line 110
    :cond_0
    return-void
.end method
