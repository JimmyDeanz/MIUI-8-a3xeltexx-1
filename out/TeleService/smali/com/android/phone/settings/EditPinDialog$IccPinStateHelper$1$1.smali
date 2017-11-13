.class Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1$1;
.super Landroid/os/Handler;
.source "EditPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1;I)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1$1;->this$0:Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1;

    iput p2, p0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1$1;->val$slotId:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 621
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 622
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1$1;->val$slotId:I

    # invokes: Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->handlerIccCardStatus(Landroid/os/AsyncResult;I)V
    invoke-static {v0, v1}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->access$1200(Landroid/os/AsyncResult;I)V

    .line 623
    return-void
.end method
