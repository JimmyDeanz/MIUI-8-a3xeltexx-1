.class Lcom/android/incallui/smartcover/a1/A1CoverPresenter$2;
.super Ljava/lang/Object;
.source "A1CoverPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcover/a1/A1CoverPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcover/a1/A1CoverPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcover/a1/A1CoverPresenter;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/incallui/smartcover/a1/A1CoverPresenter$2;->this$0:Lcom/android/incallui/smartcover/a1/A1CoverPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 207
    if-nez p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverPresenter$2;->this$0:Lcom/android/incallui/smartcover/a1/A1CoverPresenter;

    # getter for: Lcom/android/incallui/smartcover/a1/A1CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/smartcover/a1/A1CoverPresenter;->access$000(Lcom/android/incallui/smartcover/a1/A1CoverPresenter;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverPresenter$2;->this$0:Lcom/android/incallui/smartcover/a1/A1CoverPresenter;

    # getter for: Lcom/android/incallui/smartcover/a1/A1CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/smartcover/a1/A1CoverPresenter;->access$000(Lcom/android/incallui/smartcover/a1/A1CoverPresenter;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverPresenter$2;->this$0:Lcom/android/incallui/smartcover/a1/A1CoverPresenter;

    # setter for: Lcom/android/incallui/smartcover/a1/A1CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {v0, p2}, Lcom/android/incallui/smartcover/a1/A1CoverPresenter;->access$102(Lcom/android/incallui/smartcover/a1/A1CoverPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 212
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverPresenter$2;->this$0:Lcom/android/incallui/smartcover/a1/A1CoverPresenter;

    # invokes: Lcom/android/incallui/smartcover/a1/A1CoverPresenter;->updateSmartCoverInfo()V
    invoke-static {v0}, Lcom/android/incallui/smartcover/a1/A1CoverPresenter;->access$200(Lcom/android/incallui/smartcover/a1/A1CoverPresenter;)V

    goto :goto_0
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 219
    return-void
.end method
