.class Lcom/android/server/accessibility/SamsungMagnifierWindow$1;
.super Landroid/database/ContentObserver;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$100(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    return-void
.end method
