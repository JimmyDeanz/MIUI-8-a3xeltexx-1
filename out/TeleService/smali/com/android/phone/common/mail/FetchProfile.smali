.class public Lcom/android/phone/common/mail/FetchProfile;
.super Ljava/util/ArrayList;
.source "FetchProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/mail/FetchProfile$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/phone/common/mail/Fetchable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getFirstPart()Lcom/android/phone/common/mail/Part;
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/phone/common/mail/FetchProfile;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/mail/Fetchable;

    .line 78
    .local v1, "o":Lcom/android/phone/common/mail/Fetchable;
    instance-of v2, v1, Lcom/android/phone/common/mail/Part;

    if-eqz v2, :cond_0

    .line 79
    check-cast v1, Lcom/android/phone/common/mail/Part;

    .line 82
    .end local v1    # "o":Lcom/android/phone/common/mail/Fetchable;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
