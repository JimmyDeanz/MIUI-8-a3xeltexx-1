.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$12;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showRescanDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 5158
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$12;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 5160
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$12;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    .line 5161
    return-void
.end method
