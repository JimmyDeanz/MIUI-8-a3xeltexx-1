.class Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;
.super Landroid/preference/Preference;
.source "MiuiSipSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/sip/MiuiSipSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipPreference"
.end annotation


# instance fields
.field mProfile:Landroid/net/sip/SipProfile;

.field final synthetic this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/MiuiSipSettings;Landroid/content/Context;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    .line 97
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0, p3}, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->setProfile(Landroid/net/sip/SipProfile;)V

    .line 99
    return-void
.end method


# virtual methods
.method setProfile(Landroid/net/sip/SipProfile;)V
    .locals 2
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->mProfile:Landroid/net/sip/SipProfile;

    .line 107
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->getProfileName(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$000(Lcom/android/services/telephony/sip/MiuiSipSettings;Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    # getter for: Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;
    invoke-static {v0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$100(Lcom/android/services/telephony/sip/MiuiSipSettings;)Lcom/android/services/telephony/sip/SipSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->updateSummary(Ljava/lang/String;)V

    .line 111
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method updateSummary(Ljava/lang/String;)V
    .locals 7
    .param p1, "registrationStatus"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v2, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v0

    .line 120
    .local v0, "profileUid":I
    const-string v1, ""

    .line 121
    .local v1, "summary":Ljava/lang/String;
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    # getter for: Lcom/android/services/telephony/sip/MiuiSipSettings;->mUid:I
    invoke-static {v2}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$200(Lcom/android/services/telephony/sip/MiuiSipSettings;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    const v3, 0x7f08001f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->getPackageNameFromUid(I)Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$300(Lcom/android/services/telephony/sip/MiuiSipSettings;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    return-void

    .line 126
    :cond_0
    move-object v1, p1

    goto :goto_0
.end method
