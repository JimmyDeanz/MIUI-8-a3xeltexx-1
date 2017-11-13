.class public final Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
.super Ljava/lang/Object;
.source "EngineeringModeManager.java"


# static fields
.field public static final ALLOWED:I = 0x1

.field public static final DISABLE:I = 0x1

.field public static final ENABLE:I = 0x0

.field public static final ENG_KERNEL:I = 0x0

.field public static final ERRORBYTE_EM_SERVICE:[B

.field public static final ERROR_EM_SERVICE:I = -0x3e8

.field public static final NOK:I = 0x0

.field public static final NOT_ALLOWED:I = 0x0

.field public static final OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EngineeringModeManager"

.field public static final USB_DEBUG:I = 0x1

.field public static final USB_DEBUG_ALLOWED:I = 0x1

.field public static final USB_DEBUG_NOT_ALLOWED:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mContext:Landroid/content/Context;

    .line 65
    const-string v0, "EngineeringModeService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    .line 66
    const-string v0, "EngineeringModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connects to EngineeringModeService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method


# virtual methods
.method public getID()[B
    .locals 4

    .prologue
    .line 256
    const-string v2, "EngineeringModeManager"

    const-string v3, "getID() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getID()[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 271
    :goto_0
    return-object v2

    .line 262
    :catch_0
    move-exception v1

    .line 264
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "EngineeringModeManager"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 266
    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    goto :goto_0

    .line 268
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    goto :goto_0
.end method

.method public getNumOfModes()I
    .locals 5

    .prologue
    const/16 v2, -0x3e8

    .line 282
    const-string v3, "EngineeringModeManager"

    const-string v4, "getNumOfModes() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v3}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getNumOfModes()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 297
    :goto_0
    return v2

    .line 288
    :catch_0
    move-exception v1

    .line 290
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "EngineeringModeManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 294
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "singleID"    # Ljava/lang/String;
    .param p2, "OTP"    # Ljava/lang/String;
    .param p3, "modeSet"    # [B

    .prologue
    .line 121
    const-string v2, "EngineeringModeManager"

    const-string v3, "getRequestMsg() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    const/4 v3, 0x0

    invoke-interface {v2, p1, p2, p3, v3}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 136
    :goto_0
    return-object v2

    .line 127
    :catch_0
    move-exception v1

    .line 129
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "EngineeringModeManager"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 131
    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    goto :goto_0

    .line 133
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    goto :goto_0
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 4
    .param p1, "singleID"    # Ljava/lang/String;
    .param p2, "OTP"    # Ljava/lang/String;
    .param p3, "modeSet"    # [B
    .param p4, "validityCount"    # I

    .prologue
    .line 151
    const-string v2, "EngineeringModeManager"

    const-string v3, "getRequestMsg() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 166
    :goto_0
    return-object v2

    .line 157
    :catch_0
    move-exception v1

    .line 159
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "EngineeringModeManager"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 161
    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    goto :goto_0

    .line 163
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    goto :goto_0
.end method

.method public getStatus(I)I
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/16 v2, -0x3e8

    .line 92
    const-string v3, "EngineeringModeManager"

    const-string v4, "getStatus() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getStatus(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 107
    :goto_0
    return v2

    .line 98
    :catch_0
    move-exception v1

    .line 100
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "EngineeringModeManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public installToken([B)I
    .locals 5
    .param p1, "token"    # [B

    .prologue
    const/16 v2, -0x3e8

    .line 178
    const-string v3, "EngineeringModeManager"

    const-string v4, "installToken() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->installToken([B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 193
    :goto_0
    return v2

    .line 184
    :catch_0
    move-exception v1

    .line 186
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "EngineeringModeManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTokenInstalled()I
    .locals 5

    .prologue
    const/16 v2, -0x3e8

    .line 204
    const-string v3, "EngineeringModeManager"

    const-string v4, "isTokenInstalled() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v3}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->isTokenInstalled()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 219
    :goto_0
    return v2

    .line 210
    :catch_0
    move-exception v1

    .line 212
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "EngineeringModeManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeToken()I
    .locals 5

    .prologue
    const/16 v2, -0x3e8

    .line 230
    const-string v3, "EngineeringModeManager"

    const-string/jumbo v4, "removeToken() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v3}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->removeToken()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 245
    :goto_0
    return v2

    .line 236
    :catch_0
    move-exception v1

    .line 238
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "EngineeringModeManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 242
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
