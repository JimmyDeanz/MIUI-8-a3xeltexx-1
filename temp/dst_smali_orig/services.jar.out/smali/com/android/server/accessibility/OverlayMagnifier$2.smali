.class Lcom/android/server/accessibility/OverlayMagnifier$2;
.super Landroid/database/ContentObserver;
.source "OverlayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/OverlayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/OverlayMagnifier;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/OverlayMagnifier;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$2;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$2;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    # invokes: Lcom/android/server/accessibility/OverlayMagnifier;->setMagnificationSettings()V
    invoke-static {v0}, Lcom/android/server/accessibility/OverlayMagnifier;->access$600(Lcom/android/server/accessibility/OverlayMagnifier;)V

    return-void
.end method
