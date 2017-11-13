.class final Lcom/android/incallui/recorder/CallRecorderRemoteService$RecordPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CallRecorderRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/recorder/CallRecorderRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecordPhoneStateListener"
.end annotation


# instance fields
.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/incallui/recorder/CallRecorderRemoteService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/incallui/recorder/CallRecorderRemoteService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/incallui/recorder/CallRecorderRemoteService;

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 263
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService$RecordPhoneStateListener;->reference:Ljava/lang/ref/WeakReference;

    .line 264
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService$RecordPhoneStateListener;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/recorder/CallRecorderRemoteService;

    .line 269
    .local v0, "service":Lcom/android/incallui/recorder/CallRecorderRemoteService;
    if-nez v0, :cond_1

    .line 270
    const-string v1, "CallRecorderRemoteService"

    const-string v2, "onCallStateChanged service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    if-nez p1, :cond_0

    .line 274
    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;
    invoke-static {v0}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$100(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Lcom/android/incallui/recorder/CallRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/recorder/CallRecorder;->isCallRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;
    invoke-static {v0}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$100(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Lcom/android/incallui/recorder/CallRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/recorder/CallRecorder;->stopCallRecord()V

    .line 277
    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->stopSelf()V

    goto :goto_0
.end method
