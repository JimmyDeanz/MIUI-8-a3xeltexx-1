.class Lcom/android/phone/MiuiEmergencyDialer$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiEmergencyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiEmergencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiEmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiEmergencyDialer;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/phone/MiuiEmergencyDialer$1;->this$0:Lcom/android/phone/MiuiEmergencyDialer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer$1;->this$0:Lcom/android/phone/MiuiEmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/MiuiEmergencyDialer;->finish()V

    .line 116
    :cond_0
    return-void
.end method
