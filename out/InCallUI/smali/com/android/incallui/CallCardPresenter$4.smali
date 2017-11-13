.class Lcom/android/incallui/CallCardPresenter$4;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardPresenter;)V
    .locals 0

    .prologue
    .line 972
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 975
    # getter for: Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContactInfoComplete ContactCacheEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    # invokes: Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    invoke-static {v0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->access$100(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 977
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 981
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 982
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$200(Lcom/android/incallui/CallCardPresenter;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$200(Lcom/android/incallui/CallCardPresenter;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    iput-object p2, v0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 991
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    # invokes: Lcom/android/incallui/CallCardPresenter;->handleSetImageByCallCardState()V
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$700(Lcom/android/incallui/CallCardPresenter;)V

    .line 992
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    # invokes: Lcom/android/incallui/CallCardPresenter;->handleAvatarAndPhotoByCallCardState()V
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$800(Lcom/android/incallui/CallCardPresenter;)V

    .line 996
    :goto_1
    return-void

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$300(Lcom/android/incallui/CallCardPresenter;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$300(Lcom/android/incallui/CallCardPresenter;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    # setter for: Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {v0, p2}, Lcom/android/incallui/CallCardPresenter;->access$402(Lcom/android/incallui/CallCardPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    goto :goto_0

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$500(Lcom/android/incallui/CallCardPresenter;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$500(Lcom/android/incallui/CallCardPresenter;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 987
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    # setter for: Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {v0, p2}, Lcom/android/incallui/CallCardPresenter;->access$602(Lcom/android/incallui/CallCardPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    goto :goto_0

    .line 989
    :cond_2
    # getter for: Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageLoadComplete: unset to target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 994
    :cond_3
    const-string v0, "onImageLoadComplete: entry.photo is null, do nothing"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
