.class Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;
.super Lcom/android/server/policy/WindowOrientationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 771
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 772
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 778
    return-void
.end method
