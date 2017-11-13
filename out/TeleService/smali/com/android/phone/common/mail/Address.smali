.class public Lcom/android/phone/common/mail/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/phone/common/mail/Address;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMAIL_ADDRESS:Ljava/util/regex/Pattern;

.field private static final EMPTY_ADDRESS_ARRAY:[Lcom/android/phone/common/mail/Address;

.field private static final REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

.field private static final UNQUOTE:Ljava/util/regex/Pattern;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mPersonal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/mail/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    .line 67
    const-string v0, "^\"?([^\"]*)\"?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/mail/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    .line 69
    const-string v0, "\\\\([\\\\\"])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/mail/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    .line 82
    const-string v0, "\\A[^@]+@([[\\w][\\d]\\-\\(\\)\\[\\]]+\\.)+[[\\w][\\d]\\-\\(\\)\\[\\]]+\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/mail/Address;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/phone/common/mail/Address;

    sput-object v0, Lcom/android/phone/common/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/phone/common/mail/Address;

    .line 517
    new-instance v0, Lcom/android/phone/common/mail/Address$1;

    invoke-direct {v0}, Lcom/android/phone/common/mail/Address$1;-><init>()V

    sput-object v0, Lcom/android/phone/common/mail/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/common/mail/Address;->setPersonal(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/common/mail/Address;->setAddress(Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p0, p2}, Lcom/android/phone/common/mail/Address;->setPersonal(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/phone/common/mail/Address;->setAddress(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static decodeAddressPersonal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "personal"    # Ljava/lang/String;

    .prologue
    .line 184
    if-eqz p0, :cond_0

    .line 185
    sget-object v0, Lcom/android/phone/common/mail/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 186
    sget-object v0, Lcom/android/phone/common/mail/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 187
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/4 p0, 0x0

    .line 192
    :cond_0
    return-object p0
.end method

.method private static ensureQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 309
    if-nez p0, :cond_1

    .line 310
    const/4 p0, 0x0

    .line 315
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 312
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const-string v0, "^\".*\"$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static isValidAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 251
    sget-object v0, Lcom/android/phone/common/mail/Address;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static parse(Ljava/lang/String;)[Lcom/android/phone/common/mail/Address;
    .locals 8
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    .line 224
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 225
    :cond_0
    sget-object v7, Lcom/android/phone/common/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/phone/common/mail/Address;

    .line 242
    :goto_0
    return-object v7

    .line 227
    :cond_1
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    .line 228
    .local v6, "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/common/mail/Address;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v6

    .local v3, "length":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 230
    aget-object v5, v6, v2

    .line 231
    .local v5, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 233
    invoke-static {v0}, Lcom/android/phone/common/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 234
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 236
    const/4 v4, 0x0

    .line 238
    :cond_2
    new-instance v7, Lcom/android/phone/common/mail/Address;

    invoke-direct {v7, v0, v4}, Lcom/android/phone/common/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 242
    .end local v0    # "address":Ljava/lang/String;
    .end local v5    # "token":Landroid/text/util/Rfc822Token;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/android/phone/common/mail/Address;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/phone/common/mail/Address;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 256
    instance-of v0, p1, Lcom/android/phone/common/mail/Address;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/phone/common/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/android/phone/common/mail/Address;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/phone/common/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 267
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/phone/common/mail/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/phone/common/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v0, Lcom/android/phone/common/mail/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/mail/Address;->mAddress:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 1
    .param p1, "personal"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p1}, Lcom/android/phone/common/mail/Address;->decodeAddressPersonal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/mail/Address;->mPersonal:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/phone/common/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/common/mail/Address;->mPersonal:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/common/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/phone/common/mail/Address;->mPersonal:Ljava/lang/String;

    const-string v1, ".*[\\(\\)<>@,;:\\\\\".\\[\\]].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/common/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/common/mail/Address;->ensureQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/common/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/common/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/common/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/phone/common/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/phone/common/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/android/phone/common/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    return-void
.end method
