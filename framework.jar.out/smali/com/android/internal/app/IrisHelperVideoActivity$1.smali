.class Lcom/android/internal/app/IrisHelperVideoActivity$1;
.super Ljava/lang/Object;
.source "IrisHelperVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/IrisHelperVideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/IrisHelperVideoActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/IrisHelperVideoActivity;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/app/IrisHelperVideoActivity$1;->this$0:Lcom/android/internal/app/IrisHelperVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 59
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android"

    const-string v3, "com.android.internal.app.IrisEnrollActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/IrisHelperVideoActivity$1;->this$0:Lcom/android/internal/app/IrisHelperVideoActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/app/IrisHelperVideoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    return-void
.end method
