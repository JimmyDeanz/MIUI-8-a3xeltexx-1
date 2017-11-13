.class Lcom/android/phone/ADNList$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ADNList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ADNList;


# direct methods
.method public constructor <init>(Lcom/android/phone/ADNList;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    .line 187
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 188
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    # invokes: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 217
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    # invokes: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 205
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    iput-object p3, v0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    .line 194
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    # invokes: Lcom/android/phone/ADNList;->setAdapter()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$000(Lcom/android/phone/ADNList;)V

    .line 195
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const/4 v1, 0x0

    # invokes: Lcom/android/phone/ADNList;->displayProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/ADNList;->access$100(Lcom/android/phone/ADNList;Z)V

    .line 198
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-virtual {v0}, Lcom/android/phone/ADNList;->invalidateOptionsMenu()V

    .line 199
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    # invokes: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 211
    return-void
.end method
