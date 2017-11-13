.class Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;
.super Lcom/android/incallui/recorder/IRecorderCallback$Stub;
.source "CallRecorderTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/recorder/CallRecorderTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/recorder/CallRecorderTools;


# direct methods
.method private constructor <init>(Lcom/android/incallui/recorder/CallRecorderTools;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;->this$0:Lcom/android/incallui/recorder/CallRecorderTools;

    invoke-direct {p0}, Lcom/android/incallui/recorder/IRecorderCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/recorder/CallRecorderTools;Lcom/android/incallui/recorder/CallRecorderTools$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/recorder/CallRecorderTools;
    .param p2, "x1"    # Lcom/android/incallui/recorder/CallRecorderTools$1;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;-><init>(Lcom/android/incallui/recorder/CallRecorderTools;)V

    return-void
.end method


# virtual methods
.method public onCallRecorderError(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call recording failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;->this$0:Lcom/android/incallui/recorder/CallRecorderTools;

    # getter for: Lcom/android/incallui/recorder/CallRecorderTools;->mListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/incallui/recorder/CallRecorderTools;->access$300(Lcom/android/incallui/recorder/CallRecorderTools;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/recorder/CallRecorderToolsListener;

    .line 120
    .local v1, "listener":Lcom/android/incallui/recorder/CallRecorderToolsListener;
    invoke-interface {v1}, Lcom/android/incallui/recorder/CallRecorderToolsListener;->callRecordingFailed()V

    goto :goto_0

    .line 122
    .end local v1    # "listener":Lcom/android/incallui/recorder/CallRecorderToolsListener;
    :cond_0
    if-nez p1, :cond_1

    .line 147
    :goto_1
    return-void

    .line 126
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 143
    const v2, 0x7f0c008d

    .line 146
    .local v2, "textId":I
    :goto_2
    invoke-static {v2}, Lcom/android/incallui/util/Utils;->displayMsg(I)V

    goto :goto_1

    .line 128
    .end local v2    # "textId":I
    :pswitch_0
    const v2, 0x7f0c008b

    .line 129
    .restart local v2    # "textId":I
    goto :goto_2

    .line 131
    .end local v2    # "textId":I
    :pswitch_1
    const v2, 0x7f0c008a

    .line 132
    .restart local v2    # "textId":I
    goto :goto_2

    .line 134
    .end local v2    # "textId":I
    :pswitch_2
    const v2, 0x7f0c0089

    .line 135
    .restart local v2    # "textId":I
    goto :goto_2

    .line 137
    .end local v2    # "textId":I
    :pswitch_3
    const v2, 0x7f0c0088

    .line 138
    .restart local v2    # "textId":I
    goto :goto_2

    .line 140
    .end local v2    # "textId":I
    :pswitch_4
    const v2, 0x7f0c008c

    .line 141
    .restart local v2    # "textId":I
    goto :goto_2

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCallRecorderStarted()V
    .locals 3

    .prologue
    .line 104
    iget-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;->this$0:Lcom/android/incallui/recorder/CallRecorderTools;

    # getter for: Lcom/android/incallui/recorder/CallRecorderTools;->mListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/incallui/recorder/CallRecorderTools;->access$300(Lcom/android/incallui/recorder/CallRecorderTools;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/recorder/CallRecorderToolsListener;

    .line 105
    .local v1, "listener":Lcom/android/incallui/recorder/CallRecorderToolsListener;
    invoke-interface {v1}, Lcom/android/incallui/recorder/CallRecorderToolsListener;->callRecordingStarted()V

    goto :goto_0

    .line 107
    .end local v1    # "listener":Lcom/android/incallui/recorder/CallRecorderToolsListener;
    :cond_0
    return-void
.end method

.method public onCallRecorderStoped(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;->this$0:Lcom/android/incallui/recorder/CallRecorderTools;

    # getter for: Lcom/android/incallui/recorder/CallRecorderTools;->mListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/incallui/recorder/CallRecorderTools;->access$300(Lcom/android/incallui/recorder/CallRecorderTools;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/recorder/CallRecorderToolsListener;

    .line 112
    .local v1, "listener":Lcom/android/incallui/recorder/CallRecorderToolsListener;
    invoke-interface {v1, p1, p2}, Lcom/android/incallui/recorder/CallRecorderToolsListener;->callRecordingStopped(ILjava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v1    # "listener":Lcom/android/incallui/recorder/CallRecorderToolsListener;
    :cond_0
    return-void
.end method

.method public onCheckRecordTime(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 151
    iget-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;->this$0:Lcom/android/incallui/recorder/CallRecorderTools;

    # getter for: Lcom/android/incallui/recorder/CallRecorderTools;->mListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/incallui/recorder/CallRecorderTools;->access$300(Lcom/android/incallui/recorder/CallRecorderTools;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/recorder/CallRecorderToolsListener;

    .line 152
    .local v1, "listener":Lcom/android/incallui/recorder/CallRecorderToolsListener;
    invoke-interface {v1, p1, p2}, Lcom/android/incallui/recorder/CallRecorderToolsListener;->recordTimeCallback(J)V

    goto :goto_0

    .line 154
    .end local v1    # "listener":Lcom/android/incallui/recorder/CallRecorderToolsListener;
    :cond_0
    return-void
.end method
