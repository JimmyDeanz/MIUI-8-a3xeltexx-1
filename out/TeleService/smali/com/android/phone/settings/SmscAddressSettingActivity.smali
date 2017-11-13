.class public Lcom/android/phone/settings/SmscAddressSettingActivity;
.super Lmiui/app/Activity;
.source "SmscAddressSettingActivity.java"


# instance fields
.field private final WAIT_TIMEOUT:I

.field private isShowing:Z

.field private mEditTextSmscAddress:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mNeedAddressType:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSmscAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 42
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->WAIT_TIMEOUT:I

    .line 47
    iput-boolean v1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->isShowing:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mNeedAddressType:Z

    .line 58
    new-instance v0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/SmscAddressSettingActivity$1;-><init>(Lcom/android/phone/settings/SmscAddressSettingActivity;)V

    iput-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/SmscAddressSettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->isShowing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/settings/SmscAddressSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/settings/SmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/settings/SmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/phone/settings/SmscAddressSettingActivity;->smscToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/SmscAddressSettingActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/SmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/phone/settings/SmscAddressSettingActivity;->stringToSmsc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/settings/SmscAddressSettingActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/settings/SmscAddressSettingActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getSmscChars(Ljava/lang/String;I)[C
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "byteIndex"    # I

    .prologue
    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    .line 207
    const/4 v1, 0x2

    new-array v0, v1, [C

    .line 208
    .local v0, "chars":[C
    const/4 v1, 0x0

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 209
    const/4 v1, 0x1

    mul-int/lit8 v2, p2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 213
    .end local v0    # "chars":[C
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSmscInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "byteIndex"    # I

    .prologue
    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 199
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private smscToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "smsc"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 162
    const/16 v8, 0x2c

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 163
    .local v4, "indexOfComma":I
    if-lez v4, :cond_0

    .line 164
    iput-boolean v10, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mNeedAddressType:Z

    .line 165
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 166
    const-string v8, "\""

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 169
    :cond_0
    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/android/phone/TelephonyCapabilities;->isSmscAddressEncoded(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 171
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getSmscInt(Ljava/lang/String;I)I

    move-result v0

    .line 173
    .local v0, "byteCount":I
    if-lt v0, v10, :cond_4

    .line 174
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getSmscInt(Ljava/lang/String;I)I

    move-result v7

    .line 175
    .local v7, "ton_npi":I
    const/16 v8, 0x5b

    if-ne v7, v8, :cond_4

    .line 176
    const/16 v8, 0x2b

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 178
    add-int/lit8 v8, v3, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getSmscChars(Ljava/lang/String;I)[C

    move-result-object v2

    .line 179
    .local v2, "chars":[C
    if-eqz v2, :cond_2

    .line 180
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v8, v2

    if-ge v5, v8, :cond_2

    .line 181
    aget-char v1, v2, v5

    .line 182
    .local v1, "c":C
    const/16 v8, 0x66

    if-eq v1, v8, :cond_1

    const/16 v8, 0x46

    if-eq v1, v8, :cond_1

    .line 183
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 177
    .end local v1    # "c":C
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    .end local v2    # "chars":[C
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 194
    .end local v0    # "byteCount":I
    .end local v3    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "ton_npi":I
    :cond_4
    :goto_2
    return-object p1

    .line 191
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private stringToSmsc(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x30

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 222
    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/android/phone/TelephonyCapabilities;->isSmscAddressEncoded(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 223
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v4

    .line 224
    .local v4, "number":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 225
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "effective":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 229
    .local v2, "effectiveLength":I
    div-int/lit8 v0, v2, 0x2

    .line 230
    .local v0, "byteLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 231
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    mul-int/lit8 v7, v3, 0x2

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :cond_0
    and-int/lit8 v7, v2, 0x1

    if-ne v7, v10, :cond_1

    .line 235
    const/16 v7, 0x66

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    :cond_1
    const-string v7, "91"

    invoke-virtual {v5, v9, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    div-int/lit8 v6, v7, 0x2

    .line 240
    .local v6, "totalLength":I
    const/16 v7, 0xa

    if-lt v6, v7, :cond_6

    .line 241
    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 246
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 251
    .end local v0    # "byteLength":I
    .end local v1    # "effective":Ljava/lang/String;
    .end local v2    # "effectiveLength":I
    .end local v3    # "i":I
    .end local v4    # "number":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "totalLength":I
    :cond_2
    iget-boolean v7, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mNeedAddressType:Z

    if-eqz v7, :cond_5

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_3

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_4

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_7

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_7

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_7

    .line 253
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "145"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 258
    :cond_5
    :goto_2
    return-object p1

    .line 243
    .restart local v0    # "byteLength":I
    .restart local v1    # "effective":Ljava/lang/String;
    .restart local v2    # "effectiveLength":I
    .restart local v3    # "i":I
    .restart local v4    # "number":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "totalLength":I
    :cond_6
    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v5, v9, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 255
    .end local v0    # "byteLength":I
    .end local v1    # "effective":Ljava/lang/String;
    .end local v2    # "effectiveLength":I
    .end local v3    # "i":I
    .end local v4    # "number":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "totalLength":I
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "129"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 263
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v3

    invoke-static {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 269
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    .line 270
    iget-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 271
    iget-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 272
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 273
    .local v0, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 274
    .local v1, "paddingDimen":I
    invoke-virtual {v0, v1, v4, v1, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 275
    iget-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 277
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080382

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800c3

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/phone/settings/SmscAddressSettingActivity$4;

    invoke-direct {v4, p0}, Lcom/android/phone/settings/SmscAddressSettingActivity$4;-><init>(Lcom/android/phone/settings/SmscAddressSettingActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/settings/SmscAddressSettingActivity$3;

    invoke-direct {v3, p0}, Lcom/android/phone/settings/SmscAddressSettingActivity$3;-><init>(Lcom/android/phone/settings/SmscAddressSettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800c0

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/phone/settings/SmscAddressSettingActivity$2;

    invoke-direct {v4, p0}, Lcom/android/phone/settings/SmscAddressSettingActivity$2;-><init>(Lcom/android/phone/settings/SmscAddressSettingActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 305
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->isShowing:Z

    .line 323
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 309
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 312
    iget-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 313
    iget-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->isShowing:Z

    .line 316
    return-void
.end method
