.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$60;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->screenCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$60;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    :try_start_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x78

    invoke-direct {v0, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .local v0, "captureEvent":Landroid/view/KeyEvent;
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .local v1, "captureIns":Landroid/app/Instrumentation;
    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "captureEvent":Landroid/view/KeyEvent;
    const/4 v3, 0x1

    const/16 v4, 0x78

    invoke-direct {v0, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .restart local v0    # "captureEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "captureEvent":Landroid/view/KeyEvent;
    .end local v1    # "captureIns":Landroid/app/Instrumentation;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
