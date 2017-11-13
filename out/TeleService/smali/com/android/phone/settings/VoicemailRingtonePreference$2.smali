.class Lcom/android/phone/settings/VoicemailRingtonePreference$2;
.super Ljava/lang/Object;
.source "VoicemailRingtonePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/VoicemailRingtonePreference;->init(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/VoicemailRingtonePreference;

.field final synthetic val$preference:Landroid/preference/Preference;

.field final synthetic val$preferenceKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/VoicemailRingtonePreference;Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailRingtonePreference$2;->this$0:Lcom/android/phone/settings/VoicemailRingtonePreference;

    iput-object p2, p0, Lcom/android/phone/settings/VoicemailRingtonePreference$2;->val$preference:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/android/phone/settings/VoicemailRingtonePreference$2;->val$preferenceKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailRingtonePreference$2;->val$preference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailRingtonePreference$2;->this$0:Lcom/android/phone/settings/VoicemailRingtonePreference;

    # getter for: Lcom/android/phone/settings/VoicemailRingtonePreference;->mVoicemailRingtoneLookupComplete:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/settings/VoicemailRingtonePreference;->access$000(Lcom/android/phone/settings/VoicemailRingtonePreference;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailRingtonePreference$2;->val$preferenceKey:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/common/util/SettingsUtil;->updateRingtoneName(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;I)V

    .line 60
    return-void
.end method
