.class public Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactCacheEntry"
.end annotation


# instance fields
.field public callId:Ljava/lang/String;

.field public company:Ljava/lang/String;

.field public contactExists:Z

.field public displayPhotoUri:Landroid/net/Uri;

.field public isEmergencyNumber:Z

.field public isOnlineChecked:Z

.field public isSipCall:Z

.field public isVioceMailNumber:Z

.field public label:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public lookupKey:Ljava/lang/String;

.field public lookupUri:Landroid/net/Uri;

.field public mOnlineCheckInfo:Lcom/android/incallui/model/OnlineCheckInfo;

.field public miProfile:Lmiui/provider/MiProfileResult;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public personUri:Landroid/net/Uri;

.field public photo:Landroid/graphics/drawable/Drawable;

.field public yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->company:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 895
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/incallui/util/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "number"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/incallui/util/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "location"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/incallui/util/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "label"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "photo"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "yellowPagePhone"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isSipCall"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "displayPhotoUri"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "contactExists"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isEmergencyNumber"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isVioceMailNumber"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVioceMailNumber:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isOnlineChecked"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isOnlineChecked:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v1

    const-string v2, "mOnlineCheckInfo"

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mOnlineCheckInfo:Lcom/android/incallui/model/OnlineCheckInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v1

    const-string v2, "miProfile"

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->miProfile:Lmiui/provider/MiProfileResult;

    if-nez v0, :cond_1

    const-string v0, "miProfile is null"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mOnlineCheckInfo:Lcom/android/incallui/model/OnlineCheckInfo;

    invoke-virtual {v0}, Lcom/android/incallui/model/OnlineCheckInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->miProfile:Lmiui/provider/MiProfileResult;

    invoke-virtual {v0}, Lmiui/provider/MiProfileResult;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
