.class Lcom/android/server/policy/PhoneWindowManager$26$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$26;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$26;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$26;)V
    .locals 0

    .prologue
    .line 10049
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$26$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 10052
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$26$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$26;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$26;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "SystemUI is replaced"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 10053
    return-void
.end method
