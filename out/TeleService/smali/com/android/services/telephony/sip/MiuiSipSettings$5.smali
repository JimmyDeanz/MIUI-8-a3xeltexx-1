.class Lcom/android/services/telephony/sip/MiuiSipSettings$5;
.super Ljava/lang/Object;
.source "MiuiSipSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/MiuiSipSettings;->addPreferenceFor(Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/MiuiSipSettings;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$5;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$5;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    check-cast p1, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    iget-object v1, p1, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->mProfile:Landroid/net/sip/SipProfile;

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->handleProfileClick(Landroid/net/sip/SipProfile;)V
    invoke-static {v0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$1000(Lcom/android/services/telephony/sip/MiuiSipSettings;Landroid/net/sip/SipProfile;)V

    .line 319
    const/4 v0, 0x1

    return v0
.end method
