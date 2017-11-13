.class Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;
.super Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Callbacks"
.end annotation


# instance fields
.field private final mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public changeVisibleEdgeService(ZI)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "userId"    # I

    .prologue
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0x66

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v3, v2, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public closeContextualCocktail(III)V
    .locals 4
    .param p1, "cocktailId"    # I
    .param p2, "category"    # I
    .param p3, "userId"    # I

    .prologue
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public notifyKeyguardState(ZI)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0x64

    if-ne p1, v2, :cond_1

    :goto_1
    invoke-virtual {v0, v3, v2, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public notifyWakeUpState(ZII)V
    .locals 5
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0x65

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, p2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "userId"    # I

    .prologue
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public removeCocktail(II)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public sendExtraData(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "extraData"    # Landroid/os/Bundle;

    .prologue
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setDisableTickerView(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "userId"    # I

    .prologue
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x9

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public showCocktail(II)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public switchDefaultCocktail(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3, "userId"    # I

    .prologue
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public updateToolLauncher(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public viewDataChanged(III)V
    .locals 4
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .param p3, "userId"    # I

    .prologue
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
