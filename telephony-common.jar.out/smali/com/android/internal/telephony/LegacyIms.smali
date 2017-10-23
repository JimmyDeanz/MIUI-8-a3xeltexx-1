.class public final Lcom/android/internal/telephony/LegacyIms;
.super Ljava/lang/Object;
.source "LegacyIms.java"


# static fields
.field public static final EPDG_STATUS_NOT_REGISTERED:I = 0x0

.field public static final EPDG_STATUS_REGISTERED:I = 0x1

.field public static final IMS_FEATURE_TAG_CS:I = 0x1

.field public static final IMS_FEATURE_TAG_MMTEL:I = 0x10

.field public static final IMS_FEATURE_TAG_SMSIP:I = 0x2

.field public static final IMS_FEATURE_TAG_VIDEO:I = 0x8

.field public static final IMS_FEATURE_TAG_VOLTE:I = 0x4

.field public static final IMS_STATUS_LIMITED_MODE_REG:I = 0x2

.field public static final IMS_STATUS_NOT_REGISTERED:I = 0x0

.field public static final IMS_STATUS_NOT_REGISTERED_E911:I = 0x3

.field public static final IMS_STATUS_REGISTERED:I = 0x1

.field public static final IMS_STATUS_REGISTERED_E911:I = 0x4

.field private static final IMS_TYPE_HIPRI:I = 0x3

.field private static final IMS_TYPE_MOBILE:I = 0x0

.field private static final IMS_TYPE_MOBILE_IMS:I = 0x1

.field public static final IMS_TYPE_PSVT:I = 0x8

.field public static final IMS_TYPE_RCS:I = 0x4

.field public static final IMS_TYPE_SMSIP:I = 0x2

.field public static final IMS_TYPE_VOLTE:I = 0x1

.field private static final IMS_TYPE_WIFI:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "LegacyIms"

.field public static final NET_TYPE_BLUETOOTH:I = 0x3

.field public static final NET_TYPE_ETHERNET:I = 0x4

.field public static final NET_TYPE_MAX:I = 0x5

.field public static final NET_TYPE_MOBILE:I = 0x0

.field public static final NET_TYPE_WIFI:I = 0x1

.field public static final NET_TYPE_WIMAX:I = 0x2

.field public static final mFormatUri:Landroid/net/Uri;


# instance fields
.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field private mEcmpStatus:I

.field private mEpdgState:I

.field private mFeatureMask:[I

.field private mNetworkType:I

.field protected mPhoneId:I

.field private mPrevVolteRegi:Z

.field private mRegState:[I

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "content://com.example.HiddenMenuContentProvider/IMSSETTINGSData"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LegacyIms;->mFormatUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/LegacyIms;->mNetworkType:I

    .line 56
    iput-boolean v1, p0, Lcom/android/internal/telephony/LegacyIms;->mPrevVolteRegi:Z

    .line 57
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mFeatureMask:[I

    .line 58
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/LegacyIms;->mEpdgState:I

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/LegacyIms;->mEcmpStatus:I

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/LegacyIms;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/internal/telephony/LegacyIms;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 77
    iput p3, p0, Lcom/android/internal/telephony/LegacyIms;->mPhoneId:I

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mResolver:Landroid/content/ContentResolver;

    .line 79
    return-void
.end method

.method public static convertNetworkType(I)I
    .locals 4
    .param p0, "connectivityType"    # I

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "netType":I
    packed-switch p0, :pswitch_data_0

    .line 267
    :pswitch_0
    const-string v1, "LegacyIms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v0, 0x0

    .line 270
    :goto_0
    return v0

    .line 252
    :pswitch_1
    const/4 v0, 0x0

    .line 253
    goto :goto_0

    .line 255
    :pswitch_2
    const/4 v0, 0x1

    .line 256
    goto :goto_0

    .line 258
    :pswitch_3
    const/4 v0, 0x2

    .line 259
    goto :goto_0

    .line 261
    :pswitch_4
    const/4 v0, 0x3

    .line 262
    goto :goto_0

    .line 264
    :pswitch_5
    const/4 v0, 0x4

    .line 265
    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static featureMaskToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "featureMask"    # I

    .prologue
    .line 331
    if-gtz p0, :cond_1

    .line 332
    const-string v0, "-"

    .line 352
    :cond_0
    :goto_0
    return-object v0

    .line 335
    :cond_1
    const-string v0, ""

    .line 337
    .local v0, "rtString":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VOLTE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_2
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 341
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SMSIP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    :cond_4
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 345
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RCS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    :cond_6
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 349
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PSVT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static featureTagToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "featureTag"    # I

    .prologue
    .line 356
    if-gtz p0, :cond_1

    .line 357
    const-string v0, "-"

    .line 381
    :cond_0
    :goto_0
    return-object v0

    .line 360
    :cond_1
    const-string v0, ""

    .line 362
    .local v0, "rtString":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_2
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 366
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "smsip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    :cond_4
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 370
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "volte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_6
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 374
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    :cond_8
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 378
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mmtel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static imsStatusToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "imsStatus"    # I

    .prologue
    .line 306
    packed-switch p0, :pswitch_data_0

    .line 323
    const-string v1, "LegacyIms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid ims status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v0, "Unexpected"

    .line 327
    .local v0, "rtString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 308
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "NOT_REGISTERED"

    .line 309
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 311
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "REGISTERED"

    .line 312
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 314
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "LIMITED_MODE_REG"

    .line 315
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 317
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "NOT_REGISTERED_E911"

    .line 318
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 320
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "REGISTERED_E911"

    .line 321
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static networkTypeToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "networkType"    # I

    .prologue
    .line 276
    packed-switch p0, :pswitch_data_0

    .line 296
    :pswitch_0
    const-string v1, "LegacyIms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v0, "Unexpected"

    .line 300
    .local v0, "rtString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 278
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "MOBILE"

    .line 279
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 281
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "WIFI"

    .line 282
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 284
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "WIMAX"

    .line 285
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 287
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "BLUETOOTH"

    .line 288
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 290
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5
    const-string v0, "ETHERNET"

    .line 291
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 293
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_6
    const-string v0, "NONE"

    .line 294
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public clearVolteRegistered()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LegacyIms;->mPrevVolteRegi:Z

    .line 106
    return-void
.end method

.method public dcnAvailability()Z
    .locals 3

    .prologue
    .line 188
    const-string v0, "LegacyIms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dcnAvailability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/LegacyIms;->mPrevVolteRegi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-boolean v0, p0, Lcom/android/internal/telephony/LegacyIms;->mPrevVolteRegi:Z

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 385
    const-string v0, "LegacyIms:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/LegacyIms;->mNetworkType:I

    invoke-static {v1}, Lcom/android/internal/telephony/LegacyIms;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mFeatureMask[MOBILE]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LegacyIms;->mFeatureMask:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegState[MOBILE]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mFeatureMask[WIFI]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LegacyIms;->mFeatureMask:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegState[WIFI]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEpdgState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/LegacyIms;->mEpdgState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mECMPStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/LegacyIms;->mEcmpStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 394
    return-void
.end method

.method public getDcnAddress()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 164
    const/4 v7, 0x0

    .line 166
    .local v7, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "mDcnNumber"

    aput-object v0, v2, v1

    .line 169
    .local v2, "reqField":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/LegacyIms;->mFormatUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 170
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 171
    .local v8, "count":I
    if-lez v8, :cond_1

    .line 172
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 173
    const-string v0, "LegacyIms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Domain Change Address : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 183
    .local v6, "address":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "address":Ljava/lang/String;
    .end local v8    # "count":I
    :cond_0
    :goto_0
    return-object v6

    .line 177
    .restart local v8    # "count":I
    :cond_1
    :try_start_1
    const-string v0, "LegacyIms"

    const-string v1, "Cursor < 1"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v6, "4437501000"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 180
    .end local v8    # "count":I
    :catch_0
    move-exception v9

    .line 181
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "4437501000"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getFeatureMask(I)I
    .locals 1
    .param p1, "netType"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mFeatureMask:[I

    aget v0, v0, p1

    return v0
.end method

.method public isHybridVolte()Z
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "result":Z
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "ro.ril.svlte1x"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 144
    :cond_0
    return v0
.end method

.method public isImsRegistered()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    .line 91
    :goto_1
    return v1

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isSupportVoLTE()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "isEnabledVoLTE":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/internal/telephony/LegacyIms;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    const-string v1, "LegacyIms"

    const-string v2, "isSupportVoLTE is true."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, 0x1

    .line 119
    :goto_0
    return v1

    .line 118
    :cond_0
    const-string v2, "LegacyIms"

    const-string v3, "isSupportVoLTE is false."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isVolteRegistered()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/internal/telephony/LegacyIms;->mFeatureMask:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    .line 97
    iput-boolean v1, p0, Lcom/android/internal/telephony/LegacyIms;->mPrevVolteRegi:Z

    .line 101
    :goto_1
    return v1

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isWfcRegistered()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 123
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "simOperator":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    iget v3, p0, Lcom/android/internal/telephony/LegacyIms;->mEpdgState:I

    if-ne v3, v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    const-string v3, "65507"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 128
    iget v3, p0, Lcom/android/internal/telephony/LegacyIms;->mEpdgState:I

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 131
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v3, v3, v1

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public requestInitialImsRegistration()V
    .locals 5

    .prologue
    .line 148
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/internal/telephony/LegacyIms;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 151
    .local v1, "mInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    if-eqz v1, :cond_0

    .line 153
    :try_start_0
    const-string v2, "LegacyIms"

    const-string v3, "requestInitialImsRegistration"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->sendInitialRegister(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "LegacyIms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestInitialImsRegistration exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const-string v2, "LegacyIms"

    const-string v3, "mInterfaceForGeneral is not set"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLegacyImsRegistration(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 197
    if-nez p1, :cond_0

    .line 198
    const-string v5, "LegacyIms"

    const-string v6, "setLegacyImsRegistration - AsyncResult is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v4, v5

    check-cast v4, [I

    .line 204
    .local v4, "responseArray":[I
    array-length v5, v4

    const/4 v6, 0x7

    if-ge v5, v6, :cond_1

    .line 205
    const-string v5, "LegacyIms"

    const-string v6, "setLegacyImsRegistration - result is wrong value"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_1
    const/4 v2, -0x1

    .line 210
    .local v2, "networkType":I
    const/4 v3, 0x0

    .line 212
    .local v3, "regIndex":I
    aget v2, v4, v7

    .line 213
    invoke-static {v2}, Lcom/android/internal/telephony/LegacyIms;->convertNetworkType(I)I

    move-result v3

    .line 214
    iget-object v5, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v6, v4, v8

    aput v6, v5, v3

    .line 215
    iget-object v5, p0, Lcom/android/internal/telephony/LegacyIms;->mFeatureMask:[I

    aget v6, v4, v10

    aput v6, v5, v3

    .line 216
    const/4 v5, 0x4

    aget v5, v4, v5

    iput v5, p0, Lcom/android/internal/telephony/LegacyIms;->mEcmpStatus:I

    .line 217
    const/4 v5, 0x5

    aget v5, v4, v5

    iput v5, p0, Lcom/android/internal/telephony/LegacyIms;->mEpdgState:I

    .line 218
    const/4 v5, 0x6

    aget v0, v4, v5

    .line 220
    .local v0, "featureTag":I
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.ECMP_STATE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    const-string v5, "ECMP_STATE"

    iget v6, p0, Lcom/android/internal/telephony/LegacyIms;->mEpdgState:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "SKT"

    aput-object v6, v5, v8

    const-string v6, "KTT"

    aput-object v6, v5, v9

    const-string v6, "LGT"

    aput-object v6, v5, v10

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    const-string v5, "REG_STATE"

    iget-object v6, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v6, v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/LegacyIms;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    iget-object v5, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v5, v5, v3

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v5, v5, v3

    if-ne v5, v7, :cond_5

    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/LegacyIms;->isImsRegistered()Z

    move-result v5

    if-nez v5, :cond_4

    .line 231
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/LegacyIms;->mNetworkType:I

    .line 242
    :cond_4
    :goto_1
    const-string v5, "LegacyIms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NetworkType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/LegacyIms;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", RegIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", RegiState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v7, v7, v3

    invoke-static {v7}, Lcom/android/internal/telephony/LegacyIms;->imsStatusToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", FeatureMask: ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/LegacyIms;->mFeatureMask:[I

    aget v7, v7, v3

    invoke-static {v7}, Lcom/android/internal/telephony/LegacyIms;->featureMaskToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isIMSRegistered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/LegacyIms;->isImsRegistered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isVolteRegistered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/LegacyIms;->isVolteRegistered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", EpdgState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/LegacyIms;->mEpdgState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", EcmpStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/LegacyIms;->mEcmpStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", FeatureTag: ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/internal/telephony/LegacyIms;->featureTagToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 233
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v5, v5, v3

    if-ne v5, v9, :cond_4

    .line 234
    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/LegacyIms;->isWfcRegistered()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 236
    const-string v5, "LegacyIms"

    const-string v6, "WFC is already registered. Keep current NetworkType"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 238
    :cond_6
    iput v2, p0, Lcom/android/internal/telephony/LegacyIms;->mNetworkType:I

    goto/16 :goto_1
.end method
