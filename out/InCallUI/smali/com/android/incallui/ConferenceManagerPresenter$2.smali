.class Lcom/android/incallui/ConferenceManagerPresenter$2;
.super Ljava/lang/Object;
.source "ConferenceManagerPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceManagerPresenter;->updateContactCacheAndShow(Lcom/android/incallui/Call;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceManagerPresenter;

.field final synthetic val$call:Lcom/android/incallui/Call;

.field final synthetic val$canDisconnect:Z

.field final synthetic val$canSeparate:Z

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceManagerPresenter;Lcom/android/incallui/Call;IZZ)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerPresenter$2;->this$0:Lcom/android/incallui/ConferenceManagerPresenter;

    iput-object p2, p0, Lcom/android/incallui/ConferenceManagerPresenter$2;->val$call:Lcom/android/incallui/Call;

    iput p3, p0, Lcom/android/incallui/ConferenceManagerPresenter$2;->val$index:I

    iput-boolean p4, p0, Lcom/android/incallui/ConferenceManagerPresenter$2;->val$canSeparate:Z

    iput-boolean p5, p0, Lcom/android/incallui/ConferenceManagerPresenter$2;->val$canDisconnect:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter$2;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter$2;->this$0:Lcom/android/incallui/ConferenceManagerPresenter;

    iget v1, p0, Lcom/android/incallui/ConferenceManagerPresenter$2;->val$index:I

    iget-boolean v2, p0, Lcom/android/incallui/ConferenceManagerPresenter$2;->val$canSeparate:Z

    iget-boolean v3, p0, Lcom/android/incallui/ConferenceManagerPresenter$2;->val$canDisconnect:Z

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/incallui/ConferenceManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    .line 209
    :cond_0
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 214
    return-void
.end method
