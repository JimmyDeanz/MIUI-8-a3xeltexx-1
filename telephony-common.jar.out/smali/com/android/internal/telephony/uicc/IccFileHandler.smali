.class public abstract Lcom/android/internal/telephony/uicc/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;,
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;,
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BIG_BINARY_SIZE_DONE:I = 0x76

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_IMG_RECORD_SIZE_DONE:I = 0x70

.field private static final EVENT_GET_ITEM_SIZE_DONE:I = 0x6e

.field private static final EVENT_GET_RECORD_INFO_DONE:I = 0x73

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_RECORD_SIZE_IMG_DONE:I = 0xb

.field protected static final EVENT_GET_SIM_FILE_STATUS_DONE:I = 0x74

.field protected static final EVENT_GET_USIM_PB_CAPA_DONE:I = 0x72

.field private static final EVENT_READ_ADN_DONE:I = 0x6f

.field protected static final EVENT_READ_BIG_BINARY_DONE:I = 0x77

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_IMG_RECORD_DONE:I = 0x71

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final EVENT_UPDATE_ADN_DONE:I = 0x75

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final MAX_SEC_SIM_DATA_STRING:I = 0xfd

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected final mAid:Ljava/lang/String;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 235
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 237
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 238
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 239
    return-void
.end method

.method private processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z
    .locals 5
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "flag":Z
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 553
    .local v2, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 554
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 555
    const/4 v0, 0x1

    .line 563
    :cond_0
    :goto_0
    return v0

    .line 557
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v1

    .line 558
    .local v1, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v1, :cond_0

    .line 559
    invoke-direct {p0, p1, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 560
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 540
    if-nez p1, :cond_0

    .line 547
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 546
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public getAdnLikesRecordInfo(ILandroid/os/Message;)V
    .locals 2
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 1302
    const/16 v1, 0x73

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1305
    .local v0, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 1306
    return-void
.end method

.method public getAdnLikesSimStatusInfo(ILandroid/os/Message;)V
    .locals 11
    .param p1, "efid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1321
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1323
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1325
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 1199
    sparse-switch p1, :sswitch_data_0

    .line 1267
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1212
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 1220
    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    .line 1223
    :sswitch_2
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 1225
    :sswitch_3
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 1228
    :sswitch_4
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 1242
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIntType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1243
    const-string v0, "3F007F20"

    goto :goto_0

    .line 1245
    :cond_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 1249
    :sswitch_6
    const-string v0, "3F007FFF5F1F"

    goto :goto_0

    .line 1260
    :sswitch_7
    const-string v0, "3F00"

    goto :goto_0

    .line 1264
    :sswitch_8
    const-string v0, "3F007F10"

    goto :goto_0

    .line 1199
    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2f30 -> :sswitch_7
        0x2f40 -> :sswitch_7
        0x2f41 -> :sswitch_7
        0x2f42 -> :sswitch_7
        0x2f43 -> :sswitch_7
        0x2f50 -> :sswitch_7
        0x2fe2 -> :sswitch_1
        0x2fe7 -> :sswitch_1
        0x2ff0 -> :sswitch_1
        0x4f1c -> :sswitch_6
        0x4f20 -> :sswitch_3
        0x4f30 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3e -> :sswitch_4
        0x6f40 -> :sswitch_0
        0x6f42 -> :sswitch_0
        0x6f43 -> :sswitch_8
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
        0x6f4e -> :sswitch_0
        0x6f60 -> :sswitch_5
        0x6f61 -> :sswitch_5
        0x6f73 -> :sswitch_5
        0x6f78 -> :sswitch_5
        0x6f7b -> :sswitch_5
        0x6f7e -> :sswitch_5
        0x6fb7 -> :sswitch_5
        0x6fe3 -> :sswitch_5
        0x6fe5 -> :sswitch_0
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    .line 353
    return-void
.end method

.method public getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 334
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, v3, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 338
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 340
    return-void

    .end local v3    # "efPath":Ljava/lang/String;
    .end local v10    # "response":Landroid/os/Message;
    :cond_0
    move-object v3, p2

    .line 334
    goto :goto_0
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    .line 1332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 2
    .param p1, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 1314
    const/16 v1, 0x72

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1316
    .local v0, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getUsimPBCapa(Landroid/os/Message;)V

    .line 1317
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 59
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 576
    const/16 v51, 0x0

    .line 595
    .local v51, "response":Landroid/os/Message;
    const/16 v47, 0x0

    .line 598
    .local v47, "path":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move-object/from16 v13, v47

    .line 1186
    .end local v47    # "path":Ljava/lang/String;
    .local v13, "path":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 600
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 601
    .local v38, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 602
    .local v46, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 603
    .local v52, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 605
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v13, v47

    .line 606
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto :goto_1

    .line 609
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 611
    .local v40, "data":[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_3

    .line 613
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :catch_0
    move-exception v41

    move-object/from16 v13, v47

    .line 1180
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    .local v41, "exc":Ljava/lang/Exception;
    :goto_2
    if-eqz v51, :cond_3c

    .line 1181
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 616
    .end local v13    # "path":Ljava/lang/String;
    .end local v41    # "exc":Ljava/lang/Exception;
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    .restart local v40    # "data":[B
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .restart local v47    # "path":Ljava/lang/String;
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_3
    const/4 v3, 0x3

    :try_start_1
    new-array v0, v3, [I

    move-object/from16 v50, v0

    .line 617
    .local v50, "recordSize":[I
    const/4 v3, 0x0

    const/16 v4, 0xe

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v50, v3

    .line 618
    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v6, 0x3

    aget-byte v6, v40, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    aput v4, v50, v3

    .line 620
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v50, v4

    const/4 v6, 0x0

    aget v6, v50, v6

    div-int/2addr v4, v6

    aput v4, v50, v3

    .line 622
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 623
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 628
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v50    # "recordSize":[I
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 629
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 630
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 631
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 633
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v13, v47

    .line 634
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 637
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 638
    .restart local v40    # "data":[B
    move-object/from16 v0, v46

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 640
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .line 641
    .local v5, "fileid":I
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    move/from16 v49, v0

    .line 644
    .local v49, "recordNum":I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_5

    .line 645
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1179
    .end local v5    # "fileid":I
    .end local v40    # "data":[B
    .end local v49    # "recordNum":I
    :catch_1
    move-exception v41

    goto/16 :goto_2

    .line 649
    .restart local v5    # "fileid":I
    .restart local v40    # "data":[B
    .restart local v49    # "recordNum":I
    :cond_5
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_6

    const/4 v3, 0x3

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_6

    .line 651
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 654
    :cond_6
    const/16 v3, 0xe

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 656
    const/4 v3, 0x2

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 659
    .local v9, "size":I
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 661
    move-object/from16 v0, v46

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-eqz v3, :cond_7

    .line 662
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v46

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 665
    :cond_7
    if-nez v13, :cond_3d

    .line 666
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v13

    move-object/from16 v47, v13

    .line 668
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .end local v5    # "fileid":I
    move-object/from16 v0, v46

    iget v6, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v46

    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .end local v9    # "size":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v14, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v13, v47

    .line 673
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 675
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v49    # "recordNum":I
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 676
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 677
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 679
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v13, v47

    .line 680
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 683
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 685
    .restart local v40    # "data":[B
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 687
    .restart local v5    # "fileid":I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_9

    .line 688
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 691
    :cond_9
    const/16 v3, 0xd

    aget-byte v3, v40, v3

    if-eqz v3, :cond_a

    .line 692
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 695
    :cond_a
    const/4 v3, 0x2

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 698
    .restart local v9    # "size":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v14, 0x5

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v14, v5, v15, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v13, v47

    .line 702
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 708
    .end local v5    # "fileid":I
    .end local v9    # "size":I
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 709
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 710
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 711
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 712
    move-object/from16 v0, v46

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 714
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 718
    move-object/from16 v0, v46

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-nez v3, :cond_b

    .line 719
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 721
    :cond_b
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 725
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    if-le v3, v4, :cond_c

    .line 726
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 728
    :cond_c
    if-nez v13, :cond_d

    .line 729
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    .line 732
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v46

    iget v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, v46

    iget v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 746
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_4
    :try_start_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 747
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 748
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 750
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v13, v47

    .line 751
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 754
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 755
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 758
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_5
    const-string v3, "IccFileHandler: get record size img done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 760
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 761
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 762
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 764
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_f

    .line 765
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 766
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 769
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 771
    .local v45, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_10

    .line 772
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 773
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 776
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 777
    .restart local v40    # "data":[B
    move-object/from16 v0, v46

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 778
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    const/16 v3, 0xe

    :try_start_6
    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 780
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-ne v3, v4, :cond_11

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_12

    .line 782
    :cond_11
    const-string v3, "IccFileHandler: File type mismatch: Throw Exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 783
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 786
    :cond_12
    const-string v3, "IccFileHandler: read EF IMG"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 787
    if-nez v13, :cond_13

    .line 788
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    .line 790
    :cond_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v46

    iget v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, v46

    iget v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v3, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 798
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_6
    :try_start_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 799
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 800
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 801
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 802
    move-object/from16 v0, v46

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 804
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_14

    .line 805
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 809
    :cond_14
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 810
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_15

    .line 811
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 815
    :cond_15
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 818
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_7
    :try_start_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 819
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 820
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 822
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_16

    .line 823
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 824
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 827
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_16
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 828
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_17

    .line 829
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 830
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 833
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 834
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 839
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 840
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;

    .line 841
    .local v55, "tc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 842
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 844
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_18

    .line 845
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 846
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 849
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_18
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 851
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_19

    .line 852
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 853
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 856
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 857
    .restart local v40    # "data":[B
    move-object/from16 v0, v55

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    .line 859
    .restart local v5    # "fileid":I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_1a

    .line 860
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 863
    :cond_1a
    const/16 v3, 0xd

    aget-byte v3, v40, v3

    if-eqz v3, :cond_1b

    .line 864
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 868
    :cond_1b
    const/4 v3, 0x2

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 873
    .restart local v9    # "size":I
    const/4 v3, 0x0

    move-object/from16 v0, v55

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    .line 874
    move-object/from16 v0, v55

    iput v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mBinSize:I

    .line 875
    div-int/lit16 v3, v9, 0xfd

    move-object/from16 v0, v55

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mCountPhases:I

    .line 876
    const/16 v3, 0xfd

    if-le v9, v3, :cond_1c

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, v55

    iput-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mLoadAll:Z

    .line 877
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mCountPhases:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v55

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    .line 878
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v3, 0xfd

    if-le v9, v3, :cond_1d

    const/16 v20, 0xfd

    :goto_5
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v3, 0x77

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    move/from16 v16, v5

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v13, v47

    .line 885
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 876
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_4

    :cond_1d
    move/from16 v20, v9

    .line 878
    goto :goto_5

    .line 889
    .end local v5    # "fileid":I
    .end local v9    # "size":I
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v55    # "tc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 890
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;

    .line 891
    .restart local v55    # "tc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 892
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 894
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1e

    .line 895
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 896
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 899
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_1e
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 901
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_1f

    .line 902
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 903
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 906
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, v55

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mLoadAll:Z

    if-nez v3, :cond_20

    .line 907
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 909
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, v55

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v55

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    .line 914
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mCountPhases:I

    if-le v3, v4, :cond_22

    .line 915
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mBinSize:I

    new-array v0, v3, [B

    move-object/from16 v53, v0

    .line 916
    .local v53, "resultData":[B
    const/16 v44, 0x0

    .local v44, "i":I
    :goto_6
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    move/from16 v0, v44

    if-ge v0, v3, :cond_21

    .line 917
    move-object/from16 v0, v55

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v56, v0

    .line 918
    .local v56, "tempData":[B
    const/4 v3, 0x0

    move/from16 v0, v44

    mul-int/lit16 v4, v0, 0xfd

    move-object/from16 v0, v56

    array-length v6, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-static {v0, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 916
    add-int/lit8 v44, v44, 0x1

    goto :goto_6

    .line 921
    .end local v56    # "tempData":[B
    :cond_21
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 922
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 923
    .end local v13    # "path":Ljava/lang/String;
    .end local v44    # "i":I
    .end local v53    # "resultData":[B
    .restart local v47    # "path":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    mul-int/lit16 v3, v3, 0xfd

    shr-int/lit8 v18, v3, 0x8

    .line 924
    .local v18, "iccIoP1":I
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    mul-int/lit16 v3, v3, 0xfd

    and-int/lit16 v0, v3, 0xff

    move/from16 v19, v0

    .line 926
    .local v19, "IccIoP2":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    move/from16 v16, v0

    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mCountPhases:I

    if-ge v3, v4, :cond_23

    const/16 v20, 0xfd

    :goto_7
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v3, 0x77

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v13, v47

    .line 935
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 926
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mBinSize:I

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    mul-int/lit16 v4, v4, 0xfd

    sub-int v20, v3, v4

    goto :goto_7

    .line 940
    .end local v18    # "iccIoP1":I
    .end local v19    # "IccIoP2":I
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v55    # "tc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 941
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 942
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 943
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 945
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_24

    .line 946
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 947
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 950
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_24
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 952
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_25

    .line 953
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 954
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 957
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 958
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 962
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_b
    const/16 v57, 0x0

    .line 963
    .local v57, "total":I
    const/16 v58, 0x0

    .line 964
    .local v58, "used":I
    const/16 v43, 0x0

    .line 966
    .local v43, "firstIndex":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 968
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_26

    .line 975
    :goto_8
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    .line 976
    .local v48, "pblc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 978
    move/from16 v0, v58

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mUsedRecords:I

    .line 979
    move/from16 v0, v43

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    .line 981
    const/4 v3, 0x0

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    .line 983
    if-nez v58, :cond_27

    .line 987
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mTotalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v48

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 988
    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 989
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 970
    .end local v13    # "path":Ljava/lang/String;
    .end local v48    # "pblc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v57, v3, v4

    .line 971
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x1

    aget v58, v3, v4

    .line 972
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x2

    aget v43, v3, v4

    goto :goto_8

    .line 992
    .restart local v48    # "pblc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    :cond_27
    move-object/from16 v0, v48

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mLoadAll:Z

    if-eqz v3, :cond_28

    .line 993
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mTotalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v48

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 996
    :cond_28
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    const/16 v21, 0xb2

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    move/from16 v22, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v3, 0x6f

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v20 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    move-object/from16 v13, v47

    .line 999
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1002
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v43    # "firstIndex":I
    .end local v48    # "pblc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    .end local v57    # "total":I
    .end local v58    # "used":I
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1003
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    .line 1005
    .restart local v48    # "pblc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Lcom/android/internal/telephony/uicc/SimPBEntryResult;

    .line 1006
    .local v54, "resultPB":Lcom/android/internal/telephony/uicc/SimPBEntryResult;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1008
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_29

    .line 1009
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1010
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1012
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pblc EFID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "record number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "total record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mTotalRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Used Record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mUsedRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "count record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1014
    move-object/from16 v0, v48

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mLoadAll:Z

    if-nez v3, :cond_2a

    .line 1015
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1016
    .local v25, "emails":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v54

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aput-object v4, v25, v3

    .line 1017
    new-instance v20, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    move/from16 v21, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->recordIndex:I

    move/from16 v22, v0

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v23, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v24, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v26, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v27, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v28, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v29, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v30, v3, v4

    invoke-direct/range {v20 .. v30}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    .local v20, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1019
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1020
    .end local v13    # "path":Ljava/lang/String;
    .end local v20    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v25    # "emails":[Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_2a
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1021
    .restart local v25    # "emails":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v54

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aput-object v4, v25, v3

    .line 1022
    new-instance v20, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    move/from16 v21, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->recordIndex:I

    move/from16 v22, v0

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v23, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v24, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v26, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v27, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v28, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v29, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v30, v3, v4

    invoke-direct/range {v20 .. v30}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    .restart local v20    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    move-object/from16 v0, v54

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->nextIndex:I

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    .line 1025
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mUsedRecords:I

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    if-le v3, v4, :cond_2b

    move-object/from16 v0, v54

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->nextIndex:I

    const v4, 0xffff

    if-ne v3, v4, :cond_2b

    .line 1027
    const-string v3, "Read ADN finished unexpected, Try again"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1028
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V

    :goto_9
    move-object/from16 v13, v47

    .line 1038
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1030
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_2b
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mUsedRecords:I

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    if-eq v3, v4, :cond_2c

    move-object/from16 v0, v54

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->nextIndex:I

    const v4, 0xffff

    if-ne v3, v4, :cond_2d

    .line 1031
    :cond_2c
    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 1033
    :cond_2d
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v26, v0

    const/16 v27, 0xb2

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    move/from16 v28, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    move/from16 v29, v0

    const/16 v30, 0x0

    const/16 v3, 0x6f

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v26 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_9

    .line 1042
    .end local v20    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v25    # "emails":[Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v48    # "pblc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    .end local v54    # "resultPB":Lcom/android/internal/telephony/uicc/SimPBEntryResult;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1043
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 1044
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1045
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1047
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2e

    .line 1048
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1049
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1052
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_2e
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 1054
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_2f

    .line 1055
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1056
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1059
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 1060
    .restart local v40    # "data":[B
    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .line 1061
    .restart local v5    # "fileid":I
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    move/from16 v49, v0

    .line 1063
    .restart local v49    # "recordNum":I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_30

    .line 1064
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1067
    :cond_30
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_31

    .line 1068
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1071
    :cond_31
    const/16 v3, 0xe

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 1073
    const/4 v3, 0x2

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 1076
    .restart local v9    # "size":I
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 1078
    move-object/from16 v0, v46

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-eqz v3, :cond_32

    .line 1079
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v46

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 1082
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v26, v0

    const/16 v27, 0xb2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move/from16 v28, v0

    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    move/from16 v30, v0

    const/16 v31, 0x4

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v3, 0x71

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v26 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v13, v47

    .line 1087
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1091
    .end local v5    # "fileid":I
    .end local v9    # "size":I
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v49    # "recordNum":I
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1092
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1094
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_33

    .line 1095
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1096
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1099
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_33
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v39, v0

    .line 1100
    .local v39, "capaResult":[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1101
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1105
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v39    # "capaResult":[I
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1106
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1107
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v42, v0

    .line 1108
    .local v42, "fileStatus":[I
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_34

    .line 1109
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1110
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1113
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_34
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1115
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_35

    .line 1116
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1117
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1120
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_35
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 1122
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_36

    .line 1123
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1124
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1127
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_36
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 1129
    .restart local v40    # "data":[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_37

    .line 1130
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1133
    :cond_37
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_38

    const/4 v3, 0x3

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_38

    .line 1134
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1136
    :cond_38
    const/4 v3, 0x0

    const/16 v4, 0xb

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v42, v3

    .line 1137
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1138
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1142
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v42    # "fileStatus":[I
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1143
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1145
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_39

    .line 1146
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1147
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1150
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_39
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v37, v0

    .line 1151
    .local v37, "RecordInfo":[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1152
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1157
    .end local v13    # "path":Ljava/lang/String;
    .end local v37    # "RecordInfo":[I
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1158
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 1159
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1160
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1162
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3a

    .line 1163
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1164
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1167
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_3a
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 1169
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_3b

    .line 1170
    const-string v3, "getException not null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 1172
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1173
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1176
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 1183
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v47    # "path":Ljava/lang/String;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v13    # "path":Ljava/lang/String;
    .restart local v41    # "exc":Ljava/lang/Exception;
    :cond_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v41    # "exc":Ljava/lang/Exception;
    .restart local v5    # "fileid":I
    .restart local v9    # "size":I
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    .restart local v40    # "data":[B
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .restart local v49    # "recordNum":I
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_3d
    move-object/from16 v47, v13

    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    goto/16 :goto_3

    .line 598
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_1
        0x7 -> :sswitch_3
        0x8 -> :sswitch_0
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_5
        0x6e -> :sswitch_b
        0x6f -> :sswitch_c
        0x70 -> :sswitch_d
        0x71 -> :sswitch_a
        0x72 -> :sswitch_e
        0x73 -> :sswitch_10
        0x74 -> :sswitch_f
        0x75 -> :sswitch_11
        0x76 -> :sswitch_8
        0x77 -> :sswitch_9
    .end sparse-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 11
    .param p1, "recordNum"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 291
    const/16 v0, 0xb

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 295
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/16 v6, 0xa

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 299
    return-void
.end method

.method public loadEFImgLinearFixedSTK(ILandroid/os/Message;)V
    .locals 11
    .param p1, "recordNum"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 312
    const/16 v0, 0x70

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 317
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    const/4 v5, 0x4

    const/16 v6, 0xa

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 320
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "highOffset"    # I
    .param p3, "lowOffset"    # I
    .param p4, "length"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 445
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 448
    .local v11, "response":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccFileHandler: loadEFImgTransparent fileid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4f20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " highOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lowOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb0

    const/16 v3, 0x4f20

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 460
    return-void
.end method

.method public loadEFImgTransparentSTK(IIIILandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "highOffset"    # I
    .param p3, "lowOffset"    # I
    .param p4, "length"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 493
    const/4 v1, 0x4

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 495
    .local v11, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc0

    const-string v4, "img"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 498
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    .line 279
    return-void
.end method

.method public loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordNum"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 258
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p3, v3, p4}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILjava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 263
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 265
    return-void

    .end local v3    # "efPath":Ljava/lang/String;
    .end local v10    # "response":Landroid/os/Message;
    :cond_0
    move-object v3, p2

    .line 258
    goto :goto_0
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 385
    return-void
.end method

.method public loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 366
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, v3, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 370
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 372
    return-void

    .end local v3    # "efPath":Ljava/lang/String;
    .end local v10    # "response":Landroid/os/Message;
    :cond_0
    move-object v3, p2

    .line 366
    goto :goto_0
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "size"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 426
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, v4, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 429
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move v6, p2

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 431
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0xc0

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 399
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "LGT"

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const/16 v0, 0x76

    new-instance v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 403
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 413
    :goto_0
    return-void

    .line 406
    .end local v10    # "response":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 409
    .restart local v10    # "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V
    .locals 3
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 1286
    const/16 v1, 0x6e

    new-instance v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1289
    .local v0, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 1290
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "data"    # [B
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 513
    const/16 v1, 0x75

    new-instance v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    move-object/from16 v0, p5

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 516
    .local v11, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    array-length v7, p3

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move-object/from16 v9, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 520
    return-void
.end method

.method public updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordNum"    # I
    .param p4, "data"    # [B
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 474
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xdc

    const/4 v5, 0x4

    array-length v6, p4

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v4, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 478
    return-void

    .end local v3    # "efPath":Ljava/lang/String;
    :cond_0
    move-object v3, p2

    .line 474
    goto :goto_0
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "data"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 531
    return-void
.end method
