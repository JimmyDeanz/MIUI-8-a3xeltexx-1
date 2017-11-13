.class Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;
.super Landroid/os/AsyncTask;
.source "MultiSimInfoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/MultiSimInfoEditorActivity;->switchRadioState(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

.field final synthetic val$isChecked:Z

.field final synthetic val$slotId:I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity;IZJ)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    iput p2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;->val$slotId:I

    iput-boolean p3, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;->val$isChecked:Z

    iput-wide p4, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;->val$startTime:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 398
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 402
    const-string v0, "MultiSimInfoEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground setIccCardActivate slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;->val$slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;->val$isChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;->val$slotId:I

    iget-boolean v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;->val$isChecked:Z

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCardActivateHelper;->setIccCardActivate(IZ)V

    .line 404
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    # getter for: Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->access$400(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4$1;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4$1;-><init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;)V

    const-wide/16 v2, 0xbb8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;->val$startTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 410
    const/4 v0, 0x0

    return-object v0
.end method
