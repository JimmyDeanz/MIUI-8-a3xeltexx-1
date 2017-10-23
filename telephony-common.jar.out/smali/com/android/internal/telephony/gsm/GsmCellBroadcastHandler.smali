.class public Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.super Lcom/android/internal/telephony/CellBroadcastHandler;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;,
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final ALLRECEIVE_MODE:B = 0x3t

.field private static final COMMERCIAL_MODE:B = 0x0t

.field static final ETWS_NOTIFICATION:I = 0x6f

.field private static final KDDITEST_MODE:B = 0x2t

.field private static final MANUFACTURETEST_MODE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "GsmCellBroadcastHandler"

.field private static final VDBG:Z

.field private static mCid:I

.field private static mFlagDupCB:Z

.field private static mLac:I

.field private static mPlmn:Ljava/lang/String;

.field private static mSavedPdu:[B

.field private static mSmsCbDuplicateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNotification:Landroid/app/Notification;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field

.field private pre_location:Landroid/telephony/SmsCbLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    .line 412
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v2, -0x1

    .line 91
    const-string v0, "GsmCellBroadcastHandler"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 74
    new-instance v0, Landroid/telephony/SmsCbLocation;

    const-string v1, " "

    invoke-direct {v0, v1, v2, v2}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->pre_location:Landroid/telephony/SmsCbLocation;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 92
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    return-void
.end method

.method private handleGsmBroadcastSms([BZ)Landroid/telephony/SmsCbMessage;
    .locals 25
    .param p1, "receivedPdu"    # [B
    .param p2, "flagSaved"    # Z

    .prologue
    .line 163
    :try_start_0
    const-string v22, "GsmCellBroadcastHandler"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handleBroadcastSms mFlagDupCB ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", SavedMsg= "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "power"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/PowerManager;

    .line 165
    .local v21, "pm":Landroid/os/PowerManager;
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v22

    if-nez v22, :cond_0

    if-nez p2, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 169
    :cond_0
    const/4 v14, -0x1

    .line 170
    .local v14, "lac":I
    const/4 v5, -0x1

    .line 171
    .local v5, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v20

    .line 174
    .local v20, "plmn":Ljava/lang/String;
    if-nez p2, :cond_4

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    .line 179
    .local v6, "cl":Landroid/telephony/CellLocation;
    instance-of v0, v6, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 180
    move-object v0, v6

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v4, v0

    .line 181
    .local v4, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v14

    .line 182
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    .line 193
    .end local v4    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .end local v6    # "cl":Landroid/telephony/CellLocation;
    :cond_1
    :goto_0
    new-instance v10, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 195
    .local v10, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 207
    :pswitch_0
    new-instance v16, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 212
    .local v16, "location":Landroid/telephony/SmsCbLocation;
    :goto_1
    const-string v22, "GsmCellBroadcastHandler"

    const-string v23, "[CB] DuplicatedCbMessage: checking if location is changed"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v22, "GsmCellBroadcastHandler"

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsCbLocation;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->pre_location:Landroid/telephony/SmsCbLocation;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/SmsCbLocation;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->clearDuplicatedCbMessages()V

    .line 217
    :cond_2
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->pre_location:Landroid/telephony/SmsCbLocation;

    .line 219
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->isDuplicatedCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;)Z

    move-result v22

    if-eqz v22, :cond_5

    const-string v22, "AreaMail"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const-string v24, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "CBM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const-string v24, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 224
    const-string v22, "GsmCellBroadcastHandler"

    const-string v23, "[CB] DuplicatedCbMessage: Duplicated CB message exist."

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v22

    if-nez v22, :cond_3

    if-nez p2, :cond_3

    .line 227
    sput-object p1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSavedPdu:[B

    .line 228
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    .line 229
    sput v14, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    .line 230
    sput v5, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    .line 233
    :cond_3
    const/16 v22, 0x0

    .line 306
    .end local v5    # "cid":I
    .end local v10    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v14    # "lac":I
    .end local v16    # "location":Landroid/telephony/SmsCbLocation;
    .end local v20    # "plmn":Ljava/lang/String;
    .end local v21    # "pm":Landroid/os/PowerManager;
    :goto_2
    return-object v22

    .line 185
    .restart local v5    # "cid":I
    .restart local v14    # "lac":I
    .restart local v20    # "plmn":Ljava/lang/String;
    .restart local v21    # "pm":Landroid/os/PowerManager;
    :cond_4
    sget v14, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    .line 186
    sget v5, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    .line 188
    sget-object v22, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    if-eqz v22, :cond_1

    sget-object v22, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 189
    sget-object v20, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    goto/16 :goto_0

    .line 197
    .restart local v10    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    :pswitch_1
    new-instance v16, Landroid/telephony/SmsCbLocation;

    const/16 v22, -0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v1, v14, v2}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 198
    .restart local v16    # "location":Landroid/telephony/SmsCbLocation;
    goto/16 :goto_1

    .line 202
    .end local v16    # "location":Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v16, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14, v5}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 203
    .restart local v16    # "location":Landroid/telephony/SmsCbLocation;
    goto/16 :goto_1

    .line 237
    :cond_5
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v17

    .line 238
    .local v17, "pageCount":I
    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    .line 240
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    move-object/from16 v0, v16

    invoke-direct {v7, v10, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    .line 243
    .local v7, "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[B

    .line 245
    .local v19, "pdus":[[B
    if-nez v19, :cond_6

    .line 248
    move/from16 v0, v17

    new-array v0, v0, [[B

    move-object/from16 v19, v0

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_6
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    aput-object p1, v19, v22

    .line 256
    move-object/from16 v3, v19

    .local v3, "arr$":[[B
    array-length v15, v3

    .local v15, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_3
    if-ge v11, v15, :cond_8

    aget-object v18, v3, v11

    .line 257
    .local v18, "pdu":[B
    if-nez v18, :cond_7

    .line 259
    const/16 v22, 0x0

    goto :goto_2

    .line 256
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 264
    .end local v18    # "pdu":[B
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .end local v3    # "arr$":[[B
    .end local v7    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v11    # "i$":I
    .end local v15    # "len$":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 276
    .local v13, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_9
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 277
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    .line 279
    .local v12, "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v14, v5}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v22

    if-nez v22, :cond_9

    .line 280
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 304
    .end local v5    # "cid":I
    .end local v10    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v12    # "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v13    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    .end local v14    # "lac":I
    .end local v16    # "location":Landroid/telephony/SmsCbLocation;
    .end local v17    # "pageCount":I
    .end local v19    # "pdus":[[B
    .end local v20    # "plmn":Ljava/lang/String;
    .end local v21    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v8

    .line 305
    .local v8, "e":Ljava/lang/RuntimeException;
    const-string v22, "Error in decoding SMS CB pdu"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 267
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "cid":I
    .restart local v10    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v14    # "lac":I
    .restart local v16    # "location":Landroid/telephony/SmsCbLocation;
    .restart local v17    # "pageCount":I
    .restart local v20    # "plmn":Ljava/lang/String;
    .restart local v21    # "pm":Landroid/os/PowerManager;
    :cond_a
    const/16 v22, 0x1

    :try_start_1
    move/from16 v0, v22

    new-array v0, v0, [[B

    move-object/from16 v19, v0

    .line 268
    .restart local v19    # "pdus":[[B
    const/16 v22, 0x0

    aput-object p1, v19, v22

    goto :goto_4

    .line 284
    .restart local v13    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 285
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v22

    if-nez v22, :cond_c

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v9

    .line 287
    .local v9, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Lcom/sec/android/emergencymode/EmergencyManager;->setforceBlockUserPkg(ZLandroid/content/Context;)V

    .line 293
    .end local v9    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_c
    :goto_6
    const-string v22, "Disaster"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const-string v24, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 302
    :cond_d
    :goto_7
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v10, v0, v1}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v22

    goto/16 :goto_2

    .line 289
    :cond_e
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->ETWSJudgeDeliveryFromMessageID(I)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->setNotification()V

    goto :goto_6

    .line 295
    :cond_f
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->kddiJudgeDeliveryFromMessageID(I)Z

    move-result v22

    if-nez v22, :cond_10

    .line 296
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 298
    :cond_10
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->kddiJudgeDeliveryFromMessageIDForWIFI(I)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 299
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->KddiNotifiyGsmSmsToWIFI([[B)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isDuplicatedCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;)Z
    .locals 6
    .param p1, "cbHeader"    # Lcom/android/internal/telephony/gsm/SmsCbHeader;

    .prologue
    .line 417
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-direct {v0, p1, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;I)V

    .line 418
    .local v0, "duplicateInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;
    const-string v3, "GsmCellBroadcastHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] DuplicatedCbMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 422
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;

    .line 424
    .local v1, "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;
    const-string v3, "GsmCellBroadcastHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] DuplicatedCbMessage: list of duplicated Map. key value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    .end local v1    # "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 430
    const-string v3, "GsmCellBroadcastHandler"

    const-string v4, "[CB] DuplicatedCbMessage: Add CB header to hash map."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const/4 v3, 0x0

    .line 436
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 108
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 109
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->start()V

    .line 110
    return-object v0
.end method

.method private setNotification()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x0

    .line 608
    const-string v5, "GsmCellBroadcastHandler"

    const-string v6, "setNotification: create notification "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    .line 611
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 612
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    iput v9, v5, Landroid/app/Notification;->flags:I

    .line 613
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    const v6, 0x108008a

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 614
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "enabled"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 616
    const-string v5, "flag"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 620
    const-string v4, "Enable Emergency mode"

    .line 621
    .local v4, "title":Ljava/lang/CharSequence;
    const-string v0, "Tap here to enable Emergency mode to save battery power."

    .line 623
    .local v0, "details":Ljava/lang/CharSequence;
    const/16 v2, 0x6f

    .line 625
    .local v2, "notificationId":I
    const-string v5, "GsmCellBroadcastHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotification: put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 628
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v4, v0, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 630
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 634
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v2, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 635
    return-void
.end method


# virtual methods
.method protected ETWSJudgeDeliveryFromMessageID(I)Z
    .locals 5
    .param p1, "messageIdentifier"    # I

    .prologue
    const/16 v4, 0x1100

    const/4 v0, 0x1

    .line 503
    const-string v1, "Disaster"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 508
    const-string v1, "AreaMail"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 514
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 505
    :cond_2
    if-eq p1, v4, :cond_1

    const v1, 0xa003

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 508
    :cond_3
    if-lt p1, v4, :cond_0

    const/16 v1, 0x1102

    if-gt p1, v1, :cond_0

    goto :goto_0
.end method

.method protected KddiNotifiyGsmSmsToWIFI([[B)V
    .locals 2
    .param p1, "pdus"    # [[B

    .prologue
    .line 497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 500
    return-void
.end method

.method public clearDuplicatedCbMessages()V
    .locals 1

    .prologue
    .line 360
    const-string v0, "[CB] DuplicatedCbMessage: Clear duplicated CB Messages from hash map."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 361
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 362
    return-void
.end method

.method protected handleLocationInfo(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 443
    if-eqz p1, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    if-nez v4, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 446
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    .line 447
    .local v3, "states":[Ljava/lang/String;
    const/4 v2, -0x1

    .line 448
    .local v2, "lac":I
    const/4 v0, -0x1

    .line 449
    .local v0, "cid":I
    array-length v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    .line 451
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v3, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 452
    const/4 v4, 0x1

    aget-object v4, v3, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 454
    :cond_2
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 455
    const/4 v4, 0x2

    aget-object v4, v3, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 462
    :cond_3
    :goto_1
    sget v4, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    if-ne v4, v2, :cond_4

    sget v4, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    if-eq v4, v0, :cond_0

    .line 464
    :cond_4
    const-string v4, "GsmCellBroadcastHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Location is changed during LCD off. Before Lac= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Cid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". After Lac= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Cid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sput v2, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    .line 466
    sput v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    .line 467
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-string v4, "GsmCellBroadcastHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error parsing location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected handleOperatorInfo(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 474
    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    if-nez v2, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 477
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 479
    .local v1, "opNames":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    .line 480
    const/4 v2, 0x2

    aget-object v2, v1, v2

    sput-object v2, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    .line 484
    .end local v1    # "opNames":[Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSavedPdu:[B

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms([BZ)Landroid/telephony/SmsCbMessage;

    move-result-object v0

    .line 486
    .local v0, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v0, :cond_3

    .line 487
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 490
    :cond_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    goto :goto_0
.end method

.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 121
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/AsyncResult;

    if-eqz v3, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->checkEcmMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    const-string v3, "Disacrd CMAS message in ECM mode"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    move v3, v4

    .line 138
    :goto_0
    return v3

    .line 129
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 130
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v2, v3

    check-cast v2, [B

    .line 131
    .local v2, "receivedPdu":[B
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms([BZ)Landroid/telephony/SmsCbMessage;

    move-result-object v1

    .line 133
    .local v1, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 135
    const/4 v3, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .end local v2    # "receivedPdu":[B
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleSmsMessage(Landroid/os/Message;)Z

    move-result v3

    goto :goto_0
.end method

.method protected kddiJudgeDeliveryFromMessageID(I)Z
    .locals 13
    .param p1, "messageIdentifier"    # I

    .prologue
    const/16 v12, 0x1107

    const/16 v11, 0x1104

    const/16 v10, 0x1103

    const/16 v9, 0x1101

    const/16 v8, 0x1100

    .line 519
    const/4 v3, 0x0

    .line 521
    .local v3, "maintenanceMode":I
    const-string v5, "Disaster"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 532
    :goto_0
    const/4 v2, 0x0

    .line 533
    .local v2, "isDelivery":Z
    packed-switch v3, :pswitch_data_0

    .line 561
    :cond_0
    :goto_1
    const-string v5, "GsmCellBroadcastHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kddiJudgeDeliveryFromMessageID maintenanceMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isDelivery: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return v2

    .line 524
    .end local v2    # "isDelivery":Z
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const-string v6, "com.kddi.maintenanceMode"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 525
    .local v0, "context":Landroid/content/Context;
    const-string v5, "pref"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 526
    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v5, "maintenanceMode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 527
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "GsmCellBroadcastHandler"

    const-string v6, "maintenanceMode app not found"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "isDelivery":Z
    :pswitch_0
    if-eq p1, v8, :cond_3

    if-eq p1, v9, :cond_3

    if-lt p1, v11, :cond_2

    if-le p1, v12, :cond_3

    :cond_2
    const v5, 0xa003

    if-eq p1, v5, :cond_3

    const v5, 0xa801

    if-lt p1, v5, :cond_0

    const v5, 0xa8ff

    if-gt p1, v5, :cond_0

    .line 537
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 541
    :pswitch_1
    if-eq p1, v10, :cond_4

    const v5, 0xaa01

    if-lt p1, v5, :cond_0

    const v5, 0xaaff

    if-gt p1, v5, :cond_0

    .line 542
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 546
    :pswitch_2
    const v5, 0xab00

    if-lt p1, v5, :cond_0

    const v5, 0xabff

    if-gt p1, v5, :cond_0

    .line 547
    const/4 v2, 0x1

    goto :goto_1

    .line 551
    :pswitch_3
    if-eq p1, v8, :cond_8

    if-eq p1, v9, :cond_8

    if-lt p1, v11, :cond_5

    if-le p1, v12, :cond_8

    :cond_5
    const v5, 0xa003

    if-eq p1, v5, :cond_8

    const v5, 0xa801

    if-lt p1, v5, :cond_6

    const v5, 0xa8ff

    if-le p1, v5, :cond_8

    :cond_6
    if-eq p1, v10, :cond_8

    const v5, 0xaa01

    if-lt p1, v5, :cond_7

    const v5, 0xaaff

    if-le p1, v5, :cond_8

    :cond_7
    const v5, 0xab00

    if-lt p1, v5, :cond_0

    const v5, 0xabff

    if-gt p1, v5, :cond_0

    .line 554
    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected kddiJudgeDeliveryFromMessageIDForWIFI(I)Z
    .locals 8
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 567
    const/4 v3, 0x0

    .line 568
    .local v3, "maintenanceMode":I
    const/4 v2, 0x0

    .line 570
    .local v2, "isDelivery":Z
    const-string v5, "Disaster"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 581
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 588
    const/16 v5, 0x1103

    if-eq p1, v5, :cond_0

    const v5, 0xaa03

    if-ne p1, v5, :cond_1

    .line 589
    :cond_0
    const/4 v2, 0x1

    .line 593
    :cond_1
    :goto_1
    const-string v5, "GsmCellBroadcastHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kddiJudgeDeliveryFromMessageIDForWIFI messageIdentifier : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isDelivery: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return v2

    .line 573
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const-string v6, "com.kddi.maintenanceMode"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 574
    .local v0, "context":Landroid/content/Context;
    const-string v5, "pref"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 575
    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v5, "maintenanceMode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 576
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "GsmCellBroadcastHandler"

    const-string v6, "maintenanceMode app not found"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_0
    const/16 v5, 0x1100

    if-eq p1, v5, :cond_3

    const v5, 0xa003

    if-ne p1, v5, :cond_1

    .line 584
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 98
    invoke-super {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->onQuitting()V

    .line 99
    return-void
.end method
