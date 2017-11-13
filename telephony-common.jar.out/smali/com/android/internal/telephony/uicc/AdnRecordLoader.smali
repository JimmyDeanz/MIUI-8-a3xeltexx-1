.class public Lcom/android/internal/telephony/uicc/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# static fields
.field static final ACCESS_TO_PB_ADD:I = 0x1

.field static final ACCESS_TO_PB_DELETE:I = 0x2

.field static final ACCESS_TO_PB_EDIT:I = 0x3

.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_PB_ENTRY_ACCESS_DONE:I = 0x7

.field static final EVENT_PB_ENTRY_LOAD_ALL_DONE:I = 0x6

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecordLoader"

.field static final VDBG:Z


# instance fields
.field mAdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mEf:I

.field mExtensionEF:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field mPendingExtLoads:I

.field mPhoneRestrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

.field mPin2:Ljava/lang/String;

.field mRecordNumber:I

.field mReloadingEF:I

.field mResult:Ljava/lang/Object;

.field mUserResponse:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 89
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mReloadingEF:I

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 92
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPhoneRestrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .line 94
    return-void
.end method

.method private getEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 97
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    .line 98
    const-string v0, "3F007F10"

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addPBEntry(Lcom/android/internal/telephony/uicc/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "ef"    # I
    .param p3, "recordNumber"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 203
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 204
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 205
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 206
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPhoneRestrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "AdnRecordLoader"

    const-string v2, "addPBEntry"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    const/4 v2, 0x7

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p2

    move-object v4, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->accessPhoneBookEntry(IIILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 218
    :cond_0
    return-void
.end method

.method deletePBEntry(Lcom/android/internal/telephony/uicc/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "ef"    # I
    .param p3, "recordNumber"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 223
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 224
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 225
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 226
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 228
    const-string v0, "AdnRecordLoader"

    const-string v1, "updateEF - delete"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v0, "AdnRecordLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePBEntry index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    const/4 v2, 0x7

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->accessPhoneBookEntry(IIILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 233
    return-void
.end method

.method editPBEntry(Lcom/android/internal/telephony/uicc/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "ef"    # I
    .param p3, "recordNumber"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x3

    .line 187
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 188
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 189
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 190
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPhoneRestrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editPBEntry index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x7

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->accessPhoneBookEntry(IIILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 198
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 246
    :try_start_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    .line 428
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    if-nez v1, :cond_1

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 433
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 435
    :cond_1
    :goto_1
    return-void

    .line 248
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 249
    .local v10, "ar":Landroid/os/AsyncResult;
    iget-object v1, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v8, v0

    .line 251
    .local v8, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 252
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get EF record size failed"

    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    .end local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v12

    .line 417
    .local v12, "exc":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 423
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    goto :goto_1

    .line 256
    .end local v12    # "exc":Ljava/lang/RuntimeException;
    .restart local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v14, v0

    .line 262
    .local v14, "recordSize":[I
    array-length v1, v14

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    const/4 v2, 0x2

    aget v2, v14, v2

    if-le v1, v2, :cond_4

    .line 263
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 267
    :cond_4
    const/4 v1, 0x0

    aget v1, v14, v1

    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(I)[B

    move-result-object v5

    .line 269
    .local v5, "data":[B
    if-nez v5, :cond_5

    .line 270
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 274
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    .line 277
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 281
    .end local v5    # "data":[B
    .end local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "recordSize":[I
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 282
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 283
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn record failed"

    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 286
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 287
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    goto/16 :goto_0

    .line 290
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 291
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v5, v0

    .line 293
    .restart local v5    # "data":[B
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 294
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 304
    :cond_7
    new-instance v8, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    invoke-direct {v8, v1, v2, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 305
    .restart local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 307
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    iget v3, v8, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 321
    .end local v5    # "data":[B
    .end local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 322
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v5, v0

    .line 323
    .restart local v5    # "data":[B
    iget-object v1, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v8, v0

    .line 325
    .restart local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    .line 326
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 329
    :cond_8
    const-string v1, "AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADN extension EF: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->appendExtRecord([B)V

    .line 336
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 342
    .end local v5    # "data":[B
    .end local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 343
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v11, v0

    .line 345
    .local v11, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    .line 346
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 349
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 351
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 353
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "s":I
    :goto_2
    if-ge v13, v15, :cond_0

    .line 354
    new-instance v8, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v8, v2, v3, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 355
    .restart local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 362
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    iget v3, v8, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 353
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 373
    .end local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v13    # "i":I
    .end local v15    # "s":I
    :pswitch_5
    const-string v1, "AdnRecordLoader"

    const-string v2, "EVENT_PB_ENTRY_LOAD_ALL_DONE"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mReloadingEF:I

    .line 376
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 377
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v9, v0

    .line 379
    .local v9, "adnDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_b

    .line 380
    const-string v1, "AdnRecordLoader"

    const-string v2, "ar.exception != null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 384
    :cond_b
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    goto/16 :goto_0

    .line 390
    .end local v9    # "adnDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    const-string v1, "AdnRecordLoader"

    const-string v2, "EVENT_PB_ENTRY_ACCESS_DONE"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 393
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v8, v0

    .line 395
    .restart local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_c

    .line 396
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->toApplicationError()I

    move-result v1

    iput v1, v8, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 397
    const/4 v1, 0x0

    iput-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 398
    const-string v1, "AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_PB_ENTRY_ACCESS_DONE - Error is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 405
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 406
    const-string v1, "AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adn.mEfid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget v1, v8, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    const/16 v2, 0x6f3b

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    .line 400
    :cond_c
    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v8, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 401
    const-string v1, "AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_PB_ENTRY_ACCESS_DONE - index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 3
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 129
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 130
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 131
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 140
    return-void
.end method

.method loadAllFromPBEntry(ILandroid/os/Message;)V
    .locals 3
    .param p1, "ef"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mReloadingEF:I

    if-eq v0, p1, :cond_1

    .line 171
    const-string v0, "AdnRecordLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReloadingEF is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mReloadingEF:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ef is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mReloadingEF:I

    if-nez v0, :cond_0

    .line 173
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mReloadingEF:I

    .line 175
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 176
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V

    .line 182
    :cond_1
    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 3
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "recordNumber"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 111
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 112
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 113
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 114
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    .line 119
    return-void
.end method

.method public updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "ef"    # I
    .param p3, "extensionEF"    # I
    .param p4, "recordNumber"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 157
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 158
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 159
    iput p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 160
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 161
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    .line 165
    return-void
.end method
