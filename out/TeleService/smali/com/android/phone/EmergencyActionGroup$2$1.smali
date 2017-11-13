.class Lcom/android/phone/EmergencyActionGroup$2$1;
.super Ljava/lang/Object;
.source "EmergencyActionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyActionGroup$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/EmergencyActionGroup$2;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyActionGroup$2;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/phone/EmergencyActionGroup$2$1;->this$1:Lcom/android/phone/EmergencyActionGroup$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/phone/EmergencyActionGroup$2$1;->this$1:Lcom/android/phone/EmergencyActionGroup$2;

    iget-object v0, v0, Lcom/android/phone/EmergencyActionGroup$2;->val$ripple:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/phone/EmergencyActionGroup$2$1;->this$1:Lcom/android/phone/EmergencyActionGroup$2;

    iget-object v0, v0, Lcom/android/phone/EmergencyActionGroup$2;->this$0:Lcom/android/phone/EmergencyActionGroup;

    iget-object v1, p0, Lcom/android/phone/EmergencyActionGroup$2$1;->this$1:Lcom/android/phone/EmergencyActionGroup$2;

    iget-object v1, v1, Lcom/android/phone/EmergencyActionGroup$2;->this$0:Lcom/android/phone/EmergencyActionGroup;

    # getter for: Lcom/android/phone/EmergencyActionGroup;->mRippleRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/phone/EmergencyActionGroup;->access$100(Lcom/android/phone/EmergencyActionGroup;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/EmergencyActionGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    return-void
.end method
