.class public Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
.super Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
.source "SmartClipMetaTagArrayImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SmartClipMetaTagArrayImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;-><init>()V

    return-void
.end method


# virtual methods
.method public addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V
    .locals 0
    .param p1, "tag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;)V
    .locals 3
    .param p1, "tagArray"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .local v0, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .locals 10

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v3

    .local v3, "tagCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .local v2, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v5

    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v6

    .local v6, "value":Ljava/lang/String;
    const-string v0, ""

    .local v0, "extra":Ljava/lang/String;
    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/String;
    const-string v7, "null"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v6    # "value":Ljava/lang/String;
    :cond_0
    instance-of v7, v2, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    if-eqz v7, :cond_1

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    .local v4, "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", Extra data size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v4    # "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    :cond_1
    const-string v7, "SmartClipMetaTagArrayImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "extra":Ljava/lang/String;
    .end local v2    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getCopy()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    .locals 4

    .prologue
    new-instance v1, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .local v1, "copy":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v0

    .local v0, "arrayLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .local v3, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v1, v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_0
    return-object v1
.end method

.method public getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 6
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    new-instance v2, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .local v2, "resultArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v0

    .local v0, "arrayLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .local v3, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_1
    return-object v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "tagCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "objId":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    const-string v6, "BasicMetaTag"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v9, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .end local v2    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-direct {v2, v4, v5}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .restart local v2    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :goto_1
    if-nez v2, :cond_3

    const-string v6, "SmartClipMetaTagArrayImpl"

    const-string v7, "readFromParcel : Could not read tag!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "objId":Ljava/lang/String;
    .end local v2    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_0
    return-void

    .restart local v1    # "objId":Ljava/lang/String;
    .restart local v2    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_1
    const-string v6, "ParcelableMetaTag"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v9, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    check-cast v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .restart local v2    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    goto :goto_1

    :cond_2
    const-string v6, "SmartClipMetaTagArrayImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFromParcel : Unknown meta tag type!!! : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 5
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v0

    .local v0, "arrayLen":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .local v2, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v2    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v0

    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .local v2, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    instance-of v4, v2, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    if-eqz v4, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    .local v3, "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    const-string v4, "ParcelableMetaTag"

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .end local v3    # "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "BasicMetaTag"

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_1
    return-void
.end method
