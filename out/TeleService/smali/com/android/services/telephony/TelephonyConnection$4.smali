.class Lcom/android/services/telephony/TelephonyConnection$4;
.super Ljava/lang/Object;
.source "TelephonyConnection.java"

# interfaces
.implements Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor$ExtraContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/TelephonyConnection;->handleSuppServiceNotifyMessage(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConnection;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection$4;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$4;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$4;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setExtras(Landroid/os/Bundle;)V

    .line 1149
    return-void
.end method
