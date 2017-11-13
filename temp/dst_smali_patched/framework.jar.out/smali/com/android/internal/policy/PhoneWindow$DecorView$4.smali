.class Lcom/android/internal/policy/PhoneWindow$DecorView$4;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView;->setFloatingMenuEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v2, 0x52

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    return-void
.end method
