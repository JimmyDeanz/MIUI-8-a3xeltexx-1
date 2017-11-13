.class Lcom/android/phone/settings/CallRecordSetting$1;
.super Ljava/lang/Object;
.source "CallRecordSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/CallRecordSetting;->createScenarios()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallRecordSetting;

.field final synthetic val$scenarioStrings:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallRecordSetting;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/phone/settings/CallRecordSetting$1;->this$0:Lcom/android/phone/settings/CallRecordSetting;

    iput-object p2, p0, Lcom/android/phone/settings/CallRecordSetting$1;->val$scenarioStrings:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    move-object v1, p1

    check-cast v1, Lmiui/preference/RadioButtonPreference;

    .line 133
    .local v1, "pref":Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v1}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    iget-object v4, p0, Lcom/android/phone/settings/CallRecordSetting$1;->val$scenarioStrings:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lmiui/preference/RadioButtonPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 135
    .local v0, "index":I
    iget-object v4, p0, Lcom/android/phone/settings/CallRecordSetting$1;->this$0:Lcom/android/phone/settings/CallRecordSetting;

    invoke-virtual {v4}, Lcom/android/phone/settings/CallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/provider/MiuiSettings$Telephony;->setRecordScenario(Landroid/content/ContentResolver;I)V

    .line 136
    iget-object v4, p0, Lcom/android/phone/settings/CallRecordSetting$1;->this$0:Lcom/android/phone/settings/CallRecordSetting;

    if-ne v0, v2, :cond_1

    :goto_0
    # invokes: Lcom/android/phone/settings/CallRecordSetting;->updateCustomCategory(Z)V
    invoke-static {v4, v2}, Lcom/android/phone/settings/CallRecordSetting;->access$000(Lcom/android/phone/settings/CallRecordSetting;Z)V

    .line 138
    .end local v0    # "index":I
    :cond_0
    return v3

    .restart local v0    # "index":I
    :cond_1
    move v2, v3

    .line 136
    goto :goto_0
.end method
