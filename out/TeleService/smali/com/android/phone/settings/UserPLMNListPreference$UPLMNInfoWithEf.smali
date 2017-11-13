.class public Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
.super Ljava/lang/Object;
.source "UserPLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/UserPLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UPLMNInfoWithEf"
.end annotation


# instance fields
.field private mNetworkMode:I

.field private mOperatorAlphaName:Ljava/lang/String;

.field private mOperatorNumeric:Ljava/lang/String;

.field private mPriority:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "mNetworkMode"    # I
    .param p4, "mPriority"    # I

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p2, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;

    .line 270
    iput p3, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mNetworkMode:I

    .line 271
    iput p4, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mPriority:I

    .line 272
    invoke-static {p2, p1}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorAlphaName:Ljava/lang/String;

    .line 273
    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getNetworMode()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mNetworkMode:I

    return v0
.end method

.method public getOperatorAlphaNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorAlphaName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorAlphaName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mPriority:I

    return v0
.end method

.method public setOperatorNumeric(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mPriority:I

    .line 265
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPLMNInfoWithEf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mNetworkMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
