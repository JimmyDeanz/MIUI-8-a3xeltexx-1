.class final enum Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
.super Ljava/lang/Enum;
.source "MiuiSipEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/sip/MiuiSipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PreferenceKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

.field public static final enum AuthUserName:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

.field public static final enum DisplayName:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

.field public static final enum DomainAddress:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

.field public static final enum Password:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

.field public static final enum Port:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

.field public static final enum ProxyAddress:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

.field public static final enum SendKeepAlive:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

.field public static final enum Transport:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

.field public static final enum Username:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;


# instance fields
.field final defaultSummary:I

.field final initValue:I

.field preference:Landroid/preference/Preference;

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 80
    new-instance v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    const-string v1, "Username"

    const/4 v2, 0x0

    const v3, 0x7f08003e

    const/4 v4, 0x0

    const v5, 0x7f08002d

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    .line 81
    new-instance v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    const-string v1, "Password"

    const/4 v2, 0x1

    const v3, 0x7f08003f

    const/4 v4, 0x0

    const v5, 0x7f08002d

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    .line 82
    new-instance v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    const-string v1, "DomainAddress"

    const/4 v2, 0x2

    const v3, 0x7f08003d

    const/4 v4, 0x0

    const v5, 0x7f08002d

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    .line 83
    new-instance v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    const-string v1, "DisplayName"

    const/4 v2, 0x3

    const v3, 0x7f080040

    const/4 v4, 0x0

    const v5, 0x7f08002e

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    .line 84
    new-instance v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    const-string v1, "ProxyAddress"

    const/4 v2, 0x4

    const v3, 0x7f080041

    const/4 v4, 0x0

    const v5, 0x7f08002f

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->ProxyAddress:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    .line 85
    new-instance v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    const-string v1, "Port"

    const/4 v2, 0x5

    const v3, 0x7f080042

    const v4, 0x7f080030

    const v5, 0x7f080030

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    .line 86
    new-instance v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    const-string v1, "Transport"

    const/4 v2, 0x6

    const v3, 0x7f080043

    const v4, 0x7f080031

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Transport:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    .line 87
    new-instance v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    const-string v1, "SendKeepAlive"

    const/4 v2, 0x7

    const v3, 0x7f080044

    const v4, 0x7f080039

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    .line 88
    new-instance v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    const-string v1, "AuthUserName"

    const/16 v2, 0x8

    const v3, 0x7f080046

    const/4 v4, 0x0

    const v5, 0x7f08002f

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->AuthUserName:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    .line 79
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->ProxyAddress:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Transport:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->AuthUserName:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->$VALUES:[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput p3, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->text:I

    .line 103
    iput p4, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->initValue:I

    .line 104
    iput p5, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->defaultSummary:I

    .line 105
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    return-object v0
.end method

.method public static values()[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->$VALUES:[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-virtual {v0}, [Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    return-object v0
.end method


# virtual methods
.method getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v0, v0, Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v0, v0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
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
    .line 117
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v1, v1, Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "oldValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 120
    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    if-eq p0, v1, :cond_0

    .line 130
    .end local v0    # "oldValue":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 140
    :goto_1
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v1, v1, Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    if-ne p0, v1, :cond_3

    .line 133
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    # invokes: Lcom/android/services/telephony/sip/MiuiSipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/services/telephony/sip/MiuiSipEditor;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    :cond_3
    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    if-ne p0, v1, :cond_4

    # invokes: Lcom/android/services/telephony/sip/MiuiSipEditor;->getDefaultDisplayName()Ljava/lang/String;
    invoke-static {}, Lcom/android/services/telephony/sip/MiuiSipEditor;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 138
    :cond_4
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
