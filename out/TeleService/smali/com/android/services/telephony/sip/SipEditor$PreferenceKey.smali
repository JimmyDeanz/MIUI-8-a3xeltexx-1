.class final enum Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
.super Ljava/lang/Enum;
.source "SipEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/sip/SipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PreferenceKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

.field public static final enum AuthUserName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

.field public static final enum DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

.field public static final enum DomainAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

.field public static final enum Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

.field public static final enum Port:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

.field public static final enum ProxyAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

.field public static final enum SendKeepAlive:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

.field public static final enum Transport:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

.field public static final enum Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;


# instance fields
.field final defaultSummary:I

.field final initValue:I

.field preference:Landroid/preference/Preference;

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 72
    new-instance v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    const-string v1, "Username"

    const/4 v2, 0x0

    const v3, 0x7f08003e

    const/4 v4, 0x0

    const v5, 0x7f08002d

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    .line 73
    new-instance v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    const-string v1, "Password"

    const/4 v2, 0x1

    const v3, 0x7f08003f

    const/4 v4, 0x0

    const v5, 0x7f08002d

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    .line 74
    new-instance v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    const-string v1, "DomainAddress"

    const/4 v2, 0x2

    const v3, 0x7f08003d

    const/4 v4, 0x0

    const v5, 0x7f08002d

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    .line 75
    new-instance v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    const-string v1, "DisplayName"

    const/4 v2, 0x3

    const v3, 0x7f080040

    const/4 v4, 0x0

    const v5, 0x7f08002e

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    .line 76
    new-instance v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    const-string v1, "ProxyAddress"

    const/4 v2, 0x4

    const v3, 0x7f080041

    const/4 v4, 0x0

    const v5, 0x7f08002f

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ProxyAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    .line 77
    new-instance v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    const-string v1, "Port"

    const/4 v2, 0x5

    const v3, 0x7f080042

    const v4, 0x7f080030

    const v5, 0x7f080030

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    .line 78
    new-instance v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    const-string v1, "Transport"

    const/4 v2, 0x6

    const v3, 0x7f080043

    const v4, 0x7f080031

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Transport:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    .line 79
    new-instance v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    const-string v1, "SendKeepAlive"

    const/4 v2, 0x7

    const v3, 0x7f080044

    const v4, 0x7f080039

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    .line 80
    new-instance v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    const-string v1, "AuthUserName"

    const/16 v2, 0x8

    const v3, 0x7f080046

    const/4 v4, 0x0

    const v5, 0x7f08002f

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->AuthUserName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    .line 71
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ProxyAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Transport:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->AuthUserName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->$VALUES:[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "text"    # I
    .param p4, "initValue"    # I
    .param p5, "defaultSummary"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput p3, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->text:I

    .line 95
    iput p4, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->initValue:I

    .line 96
    iput p5, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->defaultSummary:I

    .line 97
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    return-object v0
.end method

.method public static values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->$VALUES:[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v0}, [Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    return-object v0
.end method


# virtual methods
.method getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v0, v0, Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v0, v0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValue() for the preference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v1, v1, Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "oldValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    if-eq p0, v1, :cond_0

    .line 122
    .end local v0    # "oldValue":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 132
    :goto_1
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v1, v1, Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_2
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    if-ne p0, v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    # invokes: Lcom/android/services/telephony/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/services/telephony/sip/SipEditor;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 126
    :cond_3
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    if-ne p0, v1, :cond_4

    # invokes: Lcom/android/services/telephony/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
