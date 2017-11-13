.class Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$2;
.super Ljava/lang/Object;
.source "SmartCoverAnswerPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$2;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 232
    if-nez p1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$2;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    # getter for: Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->access$000(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$2;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    # getter for: Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->access$000(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$2;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    # setter for: Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {v0, p2}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->access$102(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 237
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$2;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    # invokes: Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->updateSmartCoverInfo()V
    invoke-static {v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->access$200(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;)V

    goto :goto_0
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 243
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 246
    :cond_0
    return-void
.end method
