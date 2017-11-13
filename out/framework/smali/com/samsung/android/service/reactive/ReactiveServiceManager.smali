.class public final Lcom/samsung/android/service/reactive/ReactiveServiceManager;
.super Ljava/lang/Object;
.source "ReactiveServiceManager.java"


# static fields
.field public static final FLAG_ACTIVATED:I = 0x1

.field public static final FLAG_DEACTIVATED:I = 0x0

.field public static final FLAG_DEACTIVATED_WITH_ACCOUNT:I = 0x3

.field public static final FLAG_TRIGGERED:I = 0x2

.field public static final FRP_FLAG:I = 0x2

.field public static final FRP_SERIVCE_OPERATION_FAILED:I = -0x7

.field public static final GOOGLE_FACTORY_RESET_PROTECTION_IS_SUPPORTED:I = 0x2

.field private static final RC_VT_VALID_SIZE:I = 0x20

.field public static final REACTIVATION_FLAG:I = 0x0

.field public static final REACTIVE_SERVICE_EXCEPTION_ERROR:I = -0xa

.field public static final REACTIVE_SERVICE_INVALID_ARGUMENTS:I = -0x8

.field public static final REACTIVE_SERVICE_IS_NOT_EXIST:I = -0x9

.field public static final REACTIVE_SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field public static final REACTIVE_SERVICE_OPERATION_FAILED:I = -0x6

.field public static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field public static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field public static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field public static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field public static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field public static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final RS_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final RS_IS_NOT_SUPPORTED:I = 0x0

.field private static final RS_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final RS_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field public static final SAMSUNG_GOOGLE_REACTIVE_SERVICES_ARE_SUPPORTED:I = 0x3

.field public static final SAMSUNG_REACTIVE_SERVICE_IS_SUPPORTED:I = 0x1

.field public static final SERVICE_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveServiceManager"

.field private static final USE_SAMSUNG_ACCOUNT:I = 0x0

.field private static final USE_VERIFICATION_TOKEN:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/reactive/IReactiveService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mContext:Landroid/content/Context;

    .line 316
    const-string v0, "ReactiveService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/reactive/IReactiveService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    .line 317
    return-void
.end method

.method private toHex([B)Ljava/lang/String;
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    .line 406
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 407
    :cond_0
    const/4 v3, 0x0

    .line 416
    :goto_0
    return-object v3

    .line 410
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 412
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "hexNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 416
    .end local v0    # "hexNumber":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public disable([B)I
    .locals 7
    .param p1, "vt"    # [B

    .prologue
    .line 768
    if-eqz p1, :cond_0

    array-length v3, p1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    .line 769
    :cond_0
    const/4 v2, -0x8

    .line 791
    :cond_1
    :goto_0
    return v2

    .line 771
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 772
    const/4 v2, -0x2

    goto :goto_0

    .line 776
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 788
    .local v2, "ret":I
    if-eqz v2, :cond_1

    .line 789
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disable() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 778
    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .line 780
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .line 782
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 785
    const/16 v2, -0xa

    goto :goto_0
.end method

.method public disableWithAccountId(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 798
    if-nez p1, :cond_1

    .line 799
    const/4 v2, -0x8

    .line 821
    :cond_0
    :goto_0
    return v2

    .line 801
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 802
    const/4 v2, -0x2

    goto :goto_0

    .line 806
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 818
    .local v2, "ret":I
    if-eqz v2, :cond_0

    .line 819
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableWithAccountId() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 808
    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .line 810
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .line 812
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 815
    const/16 v2, -0xa

    goto :goto_0
.end method

.method public enable([B)I
    .locals 7
    .param p1, "rc"    # [B

    .prologue
    const/4 v5, 0x1

    .line 725
    if-eqz p1, :cond_0

    array-length v3, p1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    .line 726
    :cond_0
    const/4 v2, -0x8

    .line 748
    :cond_1
    :goto_0
    return v2

    .line 728
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v3

    if-eq v3, v5, :cond_3

    .line 729
    const/4 v2, -0x2

    goto :goto_0

    .line 733
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 745
    .local v2, "ret":I
    if-eqz v2, :cond_1

    .line 746
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 735
    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .line 737
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .line 739
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 742
    const/16 v2, -0xa

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 4

    .prologue
    .line 659
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->getErrorCode()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 671
    :goto_0
    return v1

    .line 661
    :catch_0
    move-exception v2

    .line 663
    .local v2, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    goto :goto_0

    .line 665
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 668
    const/16 v1, -0xa

    goto :goto_0
.end method

.method public getFlag(I)I
    .locals 6
    .param p1, "flag"    # I

    .prologue
    .line 439
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->getFlag(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 451
    .local v2, "ret":I
    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    if-gez v2, :cond_1

    .line 452
    :cond_0
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFlag() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v2    # "ret":I
    :cond_1
    :goto_0
    return v2

    .line 441
    :catch_0
    move-exception v1

    .line 443
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .line 445
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    const/16 v2, -0xa

    goto :goto_0
.end method

.method public getRandom()[B
    .locals 7

    .prologue
    .line 912
    const/4 v0, 0x0

    .line 914
    .local v0, "buffer":[B
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 916
    const-string v4, "ReactiveServiceManager"

    const-string v5, "Invalid operation."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v4, 0x0

    .line 945
    :goto_0
    return-object v4

    .line 922
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v4}, Lcom/samsung/android/service/reactive/IReactiveService;->getRandom()[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 924
    if-nez v0, :cond_1

    .line 925
    const/4 v3, -0x6

    .line 939
    .local v3, "ret":I
    :goto_1
    if-gez v3, :cond_2

    .line 940
    const-string v4, "ReactiveServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRandom() : error code["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v4, v0

    .line 945
    goto :goto_0

    .line 927
    .end local v3    # "ret":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "ret":I
    goto :goto_1

    .line 929
    .end local v3    # "ret":I
    :catch_0
    move-exception v2

    .line 931
    .local v2, "npe":Ljava/lang/NullPointerException;
    const/16 v3, -0x9

    .line 937
    .restart local v3    # "ret":I
    goto :goto_1

    .line 933
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    .end local v3    # "ret":I
    :catch_1
    move-exception v1

    .line 935
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 936
    const/16 v3, -0xa

    .restart local v3    # "ret":I
    goto :goto_1

    .line 943
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v4, "ReactiveServiceManager"

    const-string v5, "Success of generate random numbers."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getRawServiceValueForAtCommand()I
    .locals 3

    .prologue
    .line 392
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v2}, Lcom/samsung/android/service/reactive/IReactiveService;->getServiceSupport()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 401
    :goto_0
    return v2

    .line 394
    :catch_0
    move-exception v1

    .line 396
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .line 398
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    const/16 v2, -0xa

    goto :goto_0
.end method

.method public getServiceSupport()I
    .locals 6

    .prologue
    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->getServiceSupport()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 362
    .local v2, "supported":I
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Supported : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    packed-switch v2, :pswitch_data_0

    .line 379
    :pswitch_0
    const/4 v3, 0x0

    .end local v2    # "supported":I
    :goto_0
    return v3

    .line 352
    :catch_0
    move-exception v1

    .line 354
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v3, -0x9

    goto :goto_0

    .line 356
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    const/16 v3, -0xa

    goto :goto_0

    .line 368
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "supported":I
    :pswitch_1
    const/4 v3, 0x1

    goto :goto_0

    .line 371
    :pswitch_2
    const/4 v3, 0x2

    goto :goto_0

    .line 375
    :pswitch_3
    const/4 v3, 0x3

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getStatus()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 687
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 689
    const-string v2, "ReactiveServiceManager"

    const-string v3, "ReactiveService is not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/16 v0, -0x9

    .line 705
    :cond_0
    :goto_0
    return v0

    .line 693
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v1

    .line 695
    .local v1, "which":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 696
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 703
    .local v0, "ret":I
    :goto_1
    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 698
    .end local v0    # "ret":I
    :cond_2
    if-ne v1, v3, :cond_3

    .line 699
    invoke-virtual {p0, v3}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_1

    .line 701
    .end local v0    # "ret":I
    :cond_3
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 478
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->getString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 491
    :goto_0
    return-object v2

    .line 480
    :catch_0
    move-exception v1

    .line 482
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "ReactiveServiceManager"

    const-string v4, "getString() : Service is not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 485
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeString()I
    .locals 6

    .prologue
    .line 550
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->removeString()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 562
    .local v2, "ret":I
    if-gez v2, :cond_0

    .line 563
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeString() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v2    # "ret":I
    :goto_0
    return v2

    .line 552
    :catch_0
    move-exception v1

    .line 554
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .line 556
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 559
    const/16 v2, -0xa

    goto :goto_0

    .line 565
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":I
    :cond_0
    const-string v3, "ReactiveServiceManager"

    const-string/jumbo v4, "removeString Success "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sessionAccept([B)[B
    .locals 5
    .param p1, "input"    # [B

    .prologue
    const/4 v2, 0x0

    .line 582
    if-nez p1, :cond_0

    .line 584
    const-string v3, "ReactiveServiceManager"

    const-string v4, "SessionAccept() : Invalid argument"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_0
    return-object v2

    .line 590
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->sessionAccept([B)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .local v2, "ret":[B
    goto :goto_0

    .line 592
    .end local v2    # "ret":[B
    :catch_0
    move-exception v1

    .line 594
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "ReactiveServiceManager"

    const-string v4, "SessionAccpet() : Service is not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 597
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sessionComplete([B)I
    .locals 6
    .param p1, "input"    # [B

    .prologue
    .line 621
    if-nez p1, :cond_1

    .line 622
    const/4 v2, -0x8

    .line 641
    :cond_0
    :goto_0
    return v2

    .line 626
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->sessionComplete([B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 638
    .local v2, "ret":I
    if-eqz v2, :cond_0

    .line 639
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sessionComplete() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .line 630
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .line 632
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 635
    const/16 v2, -0xa

    goto :goto_0
.end method

.method public setFlag(IILjava/lang/String;)I
    .locals 2
    .param p1, "flag"    # I
    .param p2, "value"    # I
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    .line 462
    const-string v0, "ReactiveServiceManager"

    const-string/jumbo v1, "setFlag() - No longer used API"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, -0x2

    return v0
.end method

.method public setString(Ljava/lang/String;)I
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 509
    if-nez p1, :cond_0

    .line 510
    const/4 v2, -0x8

    .line 531
    :goto_0
    return v2

    .line 514
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->setString(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 526
    .local v2, "ret":I
    if-gez v2, :cond_1

    .line 527
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setString() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 516
    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .line 518
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .line 520
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 523
    const/16 v2, -0xa

    goto :goto_0

    .line 529
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":I
    :cond_1
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setString() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " characters are saved."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public verify([B)I
    .locals 6
    .param p1, "vt"    # [B

    .prologue
    const/4 v5, 0x1

    .line 842
    if-eqz p1, :cond_0

    array-length v3, p1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 843
    :cond_0
    const/4 v2, -0x8

    .line 868
    :goto_0
    return v2

    .line 845
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 846
    const/4 v2, -0x2

    goto :goto_0

    .line 851
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-direct {p0, p1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->toHex([B)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/service/reactive/IReactiveService;->verify(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 863
    .local v2, "ret":I
    if-gez v2, :cond_3

    .line 864
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "verify() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 853
    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .line 855
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .line 857
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 860
    const/16 v2, -0xa

    goto :goto_0

    .line 866
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":I
    :cond_3
    const-string v3, "ReactiveServiceManager"

    const-string v4, "Verification success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public verifyWithAccountId(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 875
    if-nez p1, :cond_0

    .line 876
    const/4 v2, -0x8

    .line 900
    :goto_0
    return v2

    .line 878
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 879
    const/4 v2, -0x2

    goto :goto_0

    .line 883
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lcom/samsung/android/service/reactive/IReactiveService;->verify(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 895
    .local v2, "ret":I
    if-gez v2, :cond_2

    .line 896
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "verifyWithAccountId() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 885
    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .line 887
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .line 889
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 892
    const/16 v2, -0xa

    goto :goto_0

    .line 898
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":I
    :cond_2
    const-string v3, "ReactiveServiceManager"

    const-string v4, "Verification with id, success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
