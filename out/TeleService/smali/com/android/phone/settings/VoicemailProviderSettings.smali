.class public Lcom/android/phone/settings/VoicemailProviderSettings;
.super Ljava/lang/Object;
.source "VoicemailProviderSettings.java"


# static fields
.field public static final FORWARDING_SETTINGS_REASONS:[I

.field public static final NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;


# instance fields
.field private mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mVoicemailNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/settings/VoicemailProviderSettings;->NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/settings/VoicemailProviderSettings;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "voicemailNumber"    # Ljava/lang/String;
    .param p2, "forwardingNumber"    # Ljava/lang/String;
    .param p3, "timeSeconds"    # I

    .prologue
    const/4 v3, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    .line 51
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 52
    :cond_0
    sget-object v2, Lcom/android/phone/settings/VoicemailProviderSettings;->NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 66
    :cond_1
    return-void

    .line 54
    :cond_2
    sget-object v2, Lcom/android/phone/settings/VoicemailProviderSettings;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 56
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 57
    .local v0, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v0, v2, v1

    .line 58
    sget-object v2, Lcom/android/phone/settings/VoicemailProviderSettings;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v1

    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 59
    iget v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 60
    iput v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 61
    const/16 v2, 0x91

    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 62
    iput-object p2, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 63
    iput p3, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    .line 59
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 0
    .param p1, "voicemailNumber"    # Ljava/lang/String;
    .param p2, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 71
    return-void
.end method

.method private forwardingSettingsEqual([Lcom/android/internal/telephony/CallForwardInfo;[Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 7
    .param p1, "infos1"    # [Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "infos2"    # [Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 103
    if-ne p1, p2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v3

    .line 106
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v3, v4

    .line 107
    goto :goto_0

    .line 109
    :cond_3
    array-length v5, p1

    array-length v6, p2

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 110
    goto :goto_0

    .line 113
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_0

    .line 114
    aget-object v1, p1, v0

    .line 115
    .local v1, "i1":Lcom/android/internal/telephony/CallForwardInfo;
    aget-object v2, p2, v0

    .line 116
    .local v2, "i2":Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v6, :cond_5

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, v6, :cond_5

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    if-ne v5, v6, :cond_5

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    if-ne v5, v6, :cond_5

    iget-object v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-ne v5, v6, :cond_5

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    if-eq v5, v6, :cond_6

    :cond_5
    move v3, v4

    .line 122
    goto :goto_0

    .line 113
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 75
    if-nez p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    instance-of v2, p1, Lcom/android/phone/settings/VoicemailProviderSettings;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 82
    check-cast v0, Lcom/android/phone/settings/VoicemailProviderSettings;

    .line 83
    .local v0, "v":Lcom/android/phone/settings/VoicemailProviderSettings;
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/phone/settings/VoicemailProviderSettings;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/phone/settings/VoicemailProviderSettings;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v0}, Lcom/android/phone/settings/VoicemailProviderSettings;->getForwardingSettings()[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/settings/VoicemailProviderSettings;->forwardingSettingsEqual([Lcom/android/internal/telephony/CallForwardInfo;[Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getForwardingSettings()[Lcom/android/internal/telephony/CallForwardInfo;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    return-object v0
.end method

.method public getVoicemailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
