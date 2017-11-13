.class Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->removeWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->cancelAnimation()V

    return-void
.end method
