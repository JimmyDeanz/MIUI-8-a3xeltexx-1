.class Lcom/android/phone/EmergencyActionGroup$2;
.super Ljava/lang/Object;
.source "EmergencyActionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyActionGroup;->startRipple()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyActionGroup;

.field final synthetic val$ripple:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyActionGroup;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/phone/EmergencyActionGroup$2;->this$0:Lcom/android/phone/EmergencyActionGroup;

    iput-object p2, p0, Lcom/android/phone/EmergencyActionGroup$2;->val$ripple:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/phone/EmergencyActionGroup$2;->val$ripple:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/phone/EmergencyActionGroup$2$1;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyActionGroup$2$1;-><init>(Lcom/android/phone/EmergencyActionGroup$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 335
    return-void
.end method
