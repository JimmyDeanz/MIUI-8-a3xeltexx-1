.class Landroid/drm/DrmManagerClient$EventHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 138
    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 139
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 143
    const/4 v6, 0x0

    .line 144
    .local v6, "event":Landroid/drm/DrmEvent;
    const/4 v5, 0x0

    .line 145
    .local v5, "error":Landroid/drm/DrmErrorEvent;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v1, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 214
    const-string v14, "DrmManagerClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown message type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 149
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/drm/DrmInfo;

    .line 151
    .local v3, "drmInfo":Landroid/drm/DrmInfo;
    const-string v14, "drm_path"

    invoke-virtual {v3, v14}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 152
    .local v8, "filepath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 154
    .local v9, "fis":Ljava/io/FileInputStream;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 156
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 158
    .local v7, "fd":Ljava/io/FileDescriptor;
    const-string v14, "FileDescriptorKey"

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v9, v10

    .line 165
    .end local v7    # "fd":Ljava/io/FileDescriptor;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v15}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v15

    # invokes: Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    invoke-static {v14, v15, v3}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v12

    .line 167
    .local v12, "status":Landroid/drm/DrmInfoStatus;
    const-string v14, "drm_info_status_object"

    invoke-virtual {v1, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v14, "drm_info_object"

    invoke-virtual {v1, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    if-eqz v9, :cond_2

    .line 173
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 177
    :cond_2
    :goto_2
    if-eqz v12, :cond_4

    const/4 v14, 0x1

    iget v15, v12, Landroid/drm/DrmInfoStatus;->statusCode:I

    if-ne v14, v15, :cond_4

    .line 178
    new-instance v6, Landroid/drm/DrmEvent;

    .end local v6    # "event":Landroid/drm/DrmEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget v0, v12, Landroid/drm/DrmInfoStatus;->infoType:I

    move/from16 v16, v0

    # invokes: Landroid/drm/DrmManagerClient;->getEventType(I)I
    invoke-static/range {v15 .. v16}, Landroid/drm/DrmManagerClient;->access$200(Landroid/drm/DrmManagerClient;I)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v6, v14, v15, v0, v1}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 217
    .end local v3    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v8    # "filepath":Ljava/lang/String;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "status":Landroid/drm/DrmInfoStatus;
    .restart local v6    # "event":Landroid/drm/DrmEvent;
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v14

    if-eqz v14, :cond_3

    if-eqz v6, :cond_3

    .line 218
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v14, v15, v6}, Landroid/drm/DrmManagerClient$OnEventListener;->onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V

    .line 220
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v14

    if-eqz v14, :cond_0

    if-eqz v5, :cond_0

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v14, v15, v5}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    goto/16 :goto_0

    .line 160
    .restart local v3    # "drmInfo":Landroid/drm/DrmInfo;
    .restart local v8    # "filepath":Ljava/lang/String;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .line 161
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    const-string v14, "DrmManagerClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception the file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 181
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v12    # "status":Landroid/drm/DrmInfoStatus;
    :cond_4
    if-eqz v12, :cond_5

    iget v11, v12, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 184
    .local v11, "infoType":I
    :goto_5
    if-eqz v12, :cond_6

    iget-object v14, v12, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v14}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v14

    if-eqz v14, :cond_6

    .line 185
    iget-object v14, v12, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v14}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v2

    .line 186
    .local v2, "bytes":[B
    new-instance v13, Ljava/lang/String;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v2, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 189
    .local v13, "url":Ljava/lang/String;
    new-instance v5, Landroid/drm/DrmErrorEvent;

    .end local v5    # "error":Landroid/drm/DrmErrorEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # invokes: Landroid/drm/DrmManagerClient;->getErrorType(ILandroid/drm/DrmInfoStatus;)I
    invoke-static {v15, v11, v12}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfoStatus;)I

    move-result v15

    invoke-direct {v5, v14, v15, v13, v1}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 190
    .restart local v5    # "error":Landroid/drm/DrmErrorEvent;
    goto/16 :goto_3

    .line 181
    .end local v2    # "bytes":[B
    .end local v11    # "infoType":I
    .end local v13    # "url":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v11

    goto :goto_5

    .line 192
    .restart local v11    # "infoType":I
    :cond_6
    new-instance v5, Landroid/drm/DrmErrorEvent;

    .end local v5    # "error":Landroid/drm/DrmErrorEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # invokes: Landroid/drm/DrmManagerClient;->getErrorType(ILandroid/drm/DrmInfoStatus;)I
    invoke-static {v15, v11, v12}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfoStatus;)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v5, v14, v15, v0, v1}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .restart local v5    # "error":Landroid/drm/DrmErrorEvent;
    goto/16 :goto_3

    .line 205
    .end local v3    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v8    # "filepath":Ljava/lang/String;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "infoType":I
    .end local v12    # "status":Landroid/drm/DrmInfoStatus;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v15}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v15

    # invokes: Landroid/drm/DrmManagerClient;->_removeAllRights(I)I
    invoke-static {v14, v15}, Landroid/drm/DrmManagerClient;->access$400(Landroid/drm/DrmManagerClient;I)I

    move-result v14

    if-nez v14, :cond_7

    .line 206
    new-instance v6, Landroid/drm/DrmEvent;

    .end local v6    # "event":Landroid/drm/DrmEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v14

    const/16 v15, 0x3e9

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v6, v14, v15, v0}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    .restart local v6    # "event":Landroid/drm/DrmEvent;
    goto/16 :goto_3

    .line 208
    :cond_7
    new-instance v5, Landroid/drm/DrmErrorEvent;

    .end local v5    # "error":Landroid/drm/DrmErrorEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v14

    const/16 v15, 0x7d7

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v5, v14, v15, v0}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    .line 211
    .restart local v5    # "error":Landroid/drm/DrmErrorEvent;
    goto/16 :goto_3

    .line 174
    .restart local v3    # "drmInfo":Landroid/drm/DrmInfo;
    .restart local v8    # "filepath":Ljava/lang/String;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "status":Landroid/drm/DrmInfoStatus;
    :catch_1
    move-exception v14

    goto/16 :goto_2

    .line 160
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "status":Landroid/drm/DrmInfoStatus;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 147
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
