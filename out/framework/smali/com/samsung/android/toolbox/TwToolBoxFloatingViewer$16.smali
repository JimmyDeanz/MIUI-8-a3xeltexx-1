.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;
.super Landroid/database/ContentObserver;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 895
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 898
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "car_mode_on"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCarMode:Z
    invoke-static {v1, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$4102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 899
    const-string v0, "toolbox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarMode onChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCarMode:Z
    invoke-static {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$4100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    .line 901
    return-void
.end method
