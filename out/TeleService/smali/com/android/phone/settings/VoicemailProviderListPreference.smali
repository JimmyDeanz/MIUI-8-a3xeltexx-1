.class public Lcom/android/phone/settings/VoicemailProviderListPreference;
.super Landroid/preference/ListPreference;
.source "VoicemailProviderListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mVmProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/VoicemailProviderListPreference;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailProviderListPreference;->mVmProvidersData:Ljava/util/Map;

    .line 78
    return-void
.end method

.method private initVoicemailProviders(Landroid/content/Intent;)V
    .locals 23
    .param p1, "activityIntent"    # Landroid/content/Intent;

    .prologue
    .line 96
    const/4 v14, 0x0

    .line 97
    .local v14, "providerToIgnore":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "action":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, "com.android.phone.ProviderToIgnore"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 103
    const-string v19, "com.android.phone.ProviderToIgnore"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailProviderListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/android/phone/settings/VoicemailProviderSettingsUtil;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailProviderListPreference;->mVmProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->clear()V

    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v5, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v17, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailProviderListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f08012d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 116
    .local v10, "myCarrier":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailProviderListPreference;->mVmProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    const-string v20, ""

    new-instance v21, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v10, v2}, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;-><init>(Lcom/android/phone/settings/VoicemailProviderListPreference;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v19, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailProviderListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 123
    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v19, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v7, "intent":Landroid/content/Intent;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 125
    .local v15, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    .line 126
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 127
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 128
    .local v4, "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 130
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 125
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 135
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 136
    .local v9, "label":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 137
    sget-object v19, Lcom/android/phone/settings/VoicemailProviderListPreference;->LOG_TAG:Ljava/lang/String;

    const-string v20, "Adding voicemail provider with no name for display."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_2
    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, "nameForDisplay":Ljava/lang/String;
    :goto_2
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v13, "providerIntent":Landroid/content/Intent;
    const-string v19, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    new-instance v18, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v13}, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;-><init>(Lcom/android/phone/settings/VoicemailProviderListPreference;Ljava/lang/String;Landroid/content/Intent;)V

    .line 146
    .local v18, "vmProvider":Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailProviderListPreference;->mVmProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    .end local v11    # "nameForDisplay":Ljava/lang/String;
    .end local v13    # "providerIntent":Landroid/content/Intent;
    .end local v18    # "vmProvider":Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;
    :cond_3
    const-string v11, ""

    goto :goto_2

    .line 151
    .end local v4    # "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "label":Ljava/lang/CharSequence;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/VoicemailProviderListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 152
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/VoicemailProviderListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "providerKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "providerKey":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "providerKey":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getVoicemailProvider(Ljava/lang/String;)Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailProviderListPreference;->mVmProvidersData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;

    return-object v0
.end method

.method public hasMoreThanOneVoicemailProvider()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 166
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailProviderListPreference;->mVmProvidersData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailProviderListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 83
    invoke-direct {p0, p2}, Lcom/android/phone/settings/VoicemailProviderListPreference;->initVoicemailProviders(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
