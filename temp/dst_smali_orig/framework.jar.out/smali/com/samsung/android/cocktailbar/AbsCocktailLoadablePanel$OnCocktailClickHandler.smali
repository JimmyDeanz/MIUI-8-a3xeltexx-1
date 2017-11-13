.class public Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;
.super Ljava/lang/Object;
.source "AbsCocktailLoadablePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnCocktailClickHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return v1

    :catch_0
    move-exception v6

    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    # getter for: Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot send pending intent: "

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    goto :goto_0

    .end local v6    # "e":Landroid/content/IntentSender$SendIntentException;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot send pending intent due to unknown exception: "

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    goto :goto_0
.end method
