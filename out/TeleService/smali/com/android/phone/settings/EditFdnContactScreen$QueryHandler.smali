.class Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EditFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/settings/EditFdnContactScreen;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    .line 380
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 381
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->dismissProgress()V
    invoke-static {v0}, Lcom/android/phone/settings/EditFdnContactScreen;->access$800(Lcom/android/phone/settings/EditFdnContactScreen;)V

    .line 418
    iget-object v2, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    sget-object v3, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->Delete:Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->handleResult(Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->access$900(Lcom/android/phone/settings/EditFdnContactScreen;Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V

    .line 419
    return-void

    :cond_0
    move v0, v1

    .line 418
    goto :goto_0
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 403
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->dismissProgress()V
    invoke-static {v0}, Lcom/android/phone/settings/EditFdnContactScreen;->access$800(Lcom/android/phone/settings/EditFdnContactScreen;)V

    .line 404
    iget-object v2, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    sget-object v3, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->Insert:Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->handleResult(Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->access$900(Lcom/android/phone/settings/EditFdnContactScreen;Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V

    .line 405
    return-void

    :cond_0
    move v0, v1

    .line 404
    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 386
    const/16 v0, -0x3e9

    .line 387
    .local v0, "error":I
    if-eqz p3, :cond_1

    .line 389
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 393
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->handleErrorResult(ZZI)V
    invoke-static {v1, v2, v2, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->access$700(Lcom/android/phone/settings/EditFdnContactScreen;ZZI)V

    .line 397
    return-void

    .line 393
    :catchall_0
    move-exception v1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    const/4 v1, 0x0

    .line 410
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->dismissProgress()V
    invoke-static {v0}, Lcom/android/phone/settings/EditFdnContactScreen;->access$800(Lcom/android/phone/settings/EditFdnContactScreen;)V

    .line 411
    iget-object v2, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    sget-object v3, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->Update:Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->handleResult(Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->access$900(Lcom/android/phone/settings/EditFdnContactScreen;Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V

    .line 412
    return-void

    :cond_0
    move v0, v1

    .line 411
    goto :goto_0
.end method
