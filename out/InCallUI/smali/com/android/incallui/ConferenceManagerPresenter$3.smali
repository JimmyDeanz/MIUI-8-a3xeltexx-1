.class Lcom/android/incallui/ConferenceManagerPresenter$3;
.super Lmiui/os/AsyncTaskWithProgress;
.source "ConferenceManagerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceManagerPresenter;->startConferenceCall(Landroid/content/Context;Landroid/app/FragmentManager;[Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/os/AsyncTaskWithProgress",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceManagerPresenter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$uris:[Landroid/os/Parcelable;


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceManagerPresenter;Landroid/app/FragmentManager;[Landroid/os/Parcelable;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/FragmentManager;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerPresenter$3;->this$0:Lcom/android/incallui/ConferenceManagerPresenter;

    iput-object p3, p0, Lcom/android/incallui/ConferenceManagerPresenter$3;->val$uris:[Landroid/os/Parcelable;

    iput-object p4, p0, Lcom/android/incallui/ConferenceManagerPresenter$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 342
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerPresenter$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 345
    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/incallui/ConferenceManagerPresenter$3;->val$uris:[Landroid/os/Parcelable;

    array-length v8, v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 346
    .local v5, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter$3;->val$uris:[Landroid/os/Parcelable;

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 347
    .local v7, "uri":Landroid/os/Parcelable;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    check-cast v7, Landroid/net/Uri;

    .end local v7    # "uri":Landroid/os/Parcelable;
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    iget-object v9, p0, Lcom/android/incallui/ConferenceManagerPresenter$3;->val$context:Landroid/content/Context;

    invoke-static {v8, v9}, Lmiui/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "phone":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 351
    invoke-static {v4}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    .end local v4    # "phone":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "participant list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 356
    .local v6, "phoneNumbers":[Ljava/lang/String;
    const-string v8, ";"

    invoke-static {v8, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "callNumbers":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add participant: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iget-object v8, p0, Lcom/android/incallui/ConferenceManagerPresenter$3;->this$0:Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v8, v1}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->startAddParticipant(Ljava/lang/String;)V

    .line 359
    const/4 v8, 0x0

    return-object v8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 342
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerPresenter$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 364
    invoke-super {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 365
    return-void
.end method
