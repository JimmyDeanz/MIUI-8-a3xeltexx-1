.class Lcom/android/incallui/InCallApp$1;
.super Landroid/database/ContentObserver;
.source "InCallApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallApp;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallApp;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/incallui/InCallApp$1;->this$0:Lcom/android/incallui/InCallApp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/incallui/InCallApp$1;->this$0:Lcom/android/incallui/InCallApp;

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->updateCallBackground()V

    .line 131
    return-void
.end method
