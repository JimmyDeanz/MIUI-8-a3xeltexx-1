.class Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback$1;
.super Ljava/lang/Object;
.source "AutoRecordWhiteListSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;->delete(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;

.field final synthetic val$checkedIds:[J

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;[JLandroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback$1;->this$1:Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;

    iput-object p2, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback$1;->val$checkedIds:[J

    iput-object p3, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback$1;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 369
    iget-object v4, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback$1;->this$1:Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;

    iget-object v4, v4, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;->this$0:Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    # getter for: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$300(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 370
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const-wide/16 v0, -0x1

    .line 371
    .local v0, "count":J
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback$1;->val$checkedIds:[J

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 372
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 373
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 375
    iget-object v4, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback$1;->val$checkedIds:[J

    aget-wide v4, v4, v2

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 376
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 371
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_2
    iget-object v4, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback$1;->this$1:Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;

    iget-object v4, v4, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;->this$0:Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    # invokes: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->saveNumbers()V
    invoke-static {v4}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$700(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)V

    .line 382
    iget-object v4, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback$1;->this$1:Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;

    iget-object v4, v4, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;->this$0:Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    # getter for: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$300(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 383
    iget-object v4, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback$1;->this$1:Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;

    iget-object v4, v4, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;->this$0:Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    # getter for: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mSummaryView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$100(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0802f6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 385
    :cond_3
    iget-object v4, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback$1;->this$1:Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;

    iget-object v4, v4, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;->this$0:Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    # invokes: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->updateAdapterData()V
    invoke-static {v4}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$400(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)V

    .line 386
    iget-object v4, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback$1;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    .line 387
    return-void
.end method
