.class Lcom/android/internal/app/IrisHelperImageActivity$1;
.super Ljava/lang/Object;
.source "IrisHelperImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/IrisHelperImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/IrisHelperImageActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/IrisHelperImageActivity;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/app/IrisHelperImageActivity$1;->this$0:Lcom/android/internal/app/IrisHelperImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 50
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android"

    const-string v3, "com.android.internal.app.IrisHelperVideoActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/IrisHelperImageActivity$1;->this$0:Lcom/android/internal/app/IrisHelperImageActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/app/IrisHelperImageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 52
    return-void
.end method
