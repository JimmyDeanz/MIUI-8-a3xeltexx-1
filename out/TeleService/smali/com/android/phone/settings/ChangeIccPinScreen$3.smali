.class Lcom/android/phone/settings/ChangeIccPinScreen$3;
.super Ljava/lang/Object;
.source "ChangeIccPinScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/ChangeIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/ChangeIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/ChangeIccPinScreen;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/phone/settings/ChangeIccPinScreen$3;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen$3;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    invoke-virtual {v0}, Lcom/android/phone/settings/ChangeIccPinScreen;->finish()V

    .line 258
    return-void
.end method
