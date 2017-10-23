.class Lcom/android/internal/policy/PhoneWindow$DecorView$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Z)V
    .locals 0

    .prologue
    .line 3529
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iput-boolean p2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3532
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->val$show:Z

    if-eqz v0, :cond_0

    .line 3533
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setSystemUiVisibility(I)V

    .line 3537
    :goto_0
    return-void

    .line 3535
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
