.class Lcom/android/phone/MobileNetworkSettings$1;
.super Landroid/telephony/PhoneStateListener;
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
    .line 137
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$1;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneStateListener.onCallStateChanged: state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/MobileNetworkSettings;->access$000(Ljava/lang/String;)V

    .line 147
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings$1;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v4}, Lcom/android/phone/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 149
    .local v0, "enabled":Z
    :goto_0
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings$1;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v4}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "enhanced_4g_lte"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 150
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings$1;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # invokes: Lcom/android/phone/MobileNetworkSettings;->hasActiveSubscriptions()Z
    invoke-static {v4}, Lcom/android/phone/MobileNetworkSettings;->access$100(Lcom/android/phone/MobileNetworkSettings;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 151
    :cond_0
    return-void

    .end local v0    # "enabled":Z
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_1
    move v0, v3

    .line 147
    goto :goto_0

    .restart local v0    # "enabled":Z
    .restart local v1    # "pref":Landroid/preference/Preference;
    :cond_2
    move v2, v3

    .line 150
    goto :goto_1
.end method
