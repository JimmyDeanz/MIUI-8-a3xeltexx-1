.class public Lcom/android/phone/settings/ADNList$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/ADNList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/ADNList;


# direct methods
.method public constructor <init>(Lcom/android/phone/settings/ADNList;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    .line 199
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 200
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ADNList;->displayProgress(Z)V

    .line 241
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    iget-object v1, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    const v2, 0x7f08041b

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/ADNList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ADNList;->showAlertDialog(Ljava/lang/String;)V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    invoke-virtual {v0}, Lcom/android/phone/settings/ADNList;->reQuery()V

    .line 247
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    iget-object v1, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    const v2, 0x7f08041c

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/ADNList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ADNList;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ADNList;->displayProgress(Z)V

    .line 217
    if-eqz p3, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    iget-object v1, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    const v2, 0x7f080417

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/ADNList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ADNList;->showAlertDialog(Ljava/lang/String;)V

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    invoke-virtual {v0}, Lcom/android/phone/settings/ADNList;->reQuery()V

    .line 223
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    iget-object v1, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    const v2, 0x7f080418

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/ADNList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ADNList;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    iput-object p3, v0, Lcom/android/phone/settings/ADNList;->mCursor:Landroid/database/Cursor;

    .line 206
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    # invokes: Lcom/android/phone/settings/ADNList;->setAdapter()V
    invoke-static {v0}, Lcom/android/phone/settings/ADNList;->access$000(Lcom/android/phone/settings/ADNList;)V

    .line 207
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ADNList;->displayProgress(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    invoke-virtual {v0}, Lcom/android/phone/settings/ADNList;->invalidateOptionsMenu()V

    .line 211
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ADNList;->displayProgress(Z)V

    .line 229
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    iget-object v1, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    const v2, 0x7f080419

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/ADNList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ADNList;->showAlertDialog(Ljava/lang/String;)V

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    invoke-virtual {v0}, Lcom/android/phone/settings/ADNList;->reQuery()V

    .line 235
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    iget-object v1, p0, Lcom/android/phone/settings/ADNList$QueryHandler;->this$0:Lcom/android/phone/settings/ADNList;

    const v2, 0x7f08041a

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/ADNList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ADNList;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_0
.end method
