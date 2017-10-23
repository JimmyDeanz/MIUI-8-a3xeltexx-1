.class public Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
.super Ljava/lang/Object;
.source "WifiHs20DBHandler.java"


# static fields
.field private static final ADD_OPERATION:I = 0x0

.field public static final BAD_MANAGEMENT_TREE:I = 0x37

.field public static final BASE:I = 0x32

.field public static final COMMAND_FAILED:I = 0x34

.field public static final COMMAND_NOT_ALLOWED:I = 0x39

.field public static final COMMAND_NOT_EXECUTED_DUE_TO_USER:I = 0x3a

.field public static final DEVICE_FULL:I = 0x36

.field public static final HOTSPOT_ID:Ljava/lang/String;

.field public static final MO_ADDITION_UPDATE_FAILED:I = 0x33

.field public static final NEW_CREDENTIAL_ID:I = -0x1

.field public static final NOT_FOUND:I = 0x3b

.field public static final NO_ERROR:I = 0x32

.field public static final PERMISSION_DENIED:I = 0x35

.field public static final POLICY_UPDATE_NODE:I = 0x0

.field public static final REQUEST_ENTRY_TOO_LARGE:I = 0x38

.field public static final SUBSCRIPTION_UPDATE_NODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HotspotDBHandler"

.field private static final UPDATE_OPERATION:I = 0x1


# instance fields
.field private DEFAULT_LENGTH:I

.field private HS20_DB_ADD_OPERATION:I

.field private HS20_DB_UPDATE_OPERATION:I

.field private UPDATE_SUCCESS:I

.field private cr:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->HOTSPOT_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    .line 48
    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    .line 50
    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->DEFAULT_LENGTH:I

    .line 52
    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->UPDATE_SUCCESS:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->HS20_DB_ADD_OPERATION:I

    .line 56
    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->HS20_DB_UPDATE_OPERATION:I

    .line 89
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    .line 91
    return-void
.end method

.method private addCredential(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 13
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1358
    const-string v0, "HotspotDBHandler"

    const-string v5, "addCredential"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1360
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "hotspot_id"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const-string v0, "creation_date"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1363
    const-string v0, "expiration_date"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    :cond_0
    const-string v0, "realm"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string v0, "HotspotDBHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding CA cert AAA finger print Credential"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v12, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->hs20AAAFP:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->hs20AAAFP:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1367
    const-string v0, "hs20_aaa_ca_cert_hash"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->hs20AAAFP:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :cond_1
    const-string v5, "check_aaa_server_cert_status"

    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-boolean v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->checkAAAServerCertStatus:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1370
    const-string v0, "credential_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1371
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    if-eqz v0, :cond_2

    .line 1372
    const-string v0, "eap_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1373
    :cond_2
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    if-eqz v0, :cond_3

    .line 1374
    const-string v0, "username"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-string v0, "password"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1378
    const-string v0, "machine_managed"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-boolean v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->machineManaged:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1380
    const-string v0, "soft_tokenapp"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->softTokenApp:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v0, "abletoshare"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-boolean v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->ableToShare:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1384
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    if-eqz v0, :cond_3

    .line 1385
    const-string v0, "inner_eaptype"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerEAPType:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string v0, "inner_method"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string v0, "inner_vendor_id"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1391
    const-string v0, "inner_vendor_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1393
    const-string v0, "vendor_id"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1395
    const-string v0, "vendor_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1397
    const-string v0, "eap_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1401
    :cond_3
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    if-eqz v0, :cond_4

    .line 1402
    const-string v0, "certificate_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certificateType:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const-string v0, "cert_sha256_finger_print"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    const-string v0, "cert_id"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1408
    const-string v0, "private_key_hash"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->privateKeyHash:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const-string v0, "client_cert_hash"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->clientcertHash:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    :cond_4
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    if-eqz v0, :cond_5

    .line 1414
    const-string v0, "sim_eaptype"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v0, "imsi"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    :cond_5
    const-string v3, "hotspot_id=?"

    .line 1418
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v0, v4, v2

    .line 1421
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1423
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1425
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1426
    .local v6, "count":I
    if-nez v6, :cond_8

    .line 1427
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 1428
    .local v9, "newUri":Landroid/net/Uri;
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    .end local v9    # "newUri":Landroid/net/Uri;
    :goto_1
    if-eqz v7, :cond_6

    .line 1438
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1441
    .end local v6    # "count":I
    :cond_6
    :goto_2
    return-void

    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    :cond_7
    move v0, v2

    .line 1368
    goto/16 :goto_0

    .line 1430
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "count":I
    .restart local v7    # "cur":Landroid/database/Cursor;
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1432
    .local v10, "ret":I
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating the values for Credential"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1434
    .end local v6    # "count":I
    .end local v10    # "ret":I
    :catch_0
    move-exception v8

    .line 1435
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1437
    if-eqz v7, :cond_6

    .line 1438
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1437
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    .line 1438
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method private addHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 14
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1483
    const-string v0, "HotspotDBHandler"

    const-string v1, "Adding HomeOI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1485
    .local v13, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1486
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    .line 1487
    .local v9, "homeOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    const-string v0, "server_homeoilist_id"

    iget-object v1, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    const-string v0, "homeoi"

    iget-object v1, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOI:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    const-string v0, "homeoirequired"

    iget-boolean v1, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOIRequired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1491
    const-string v3, "hotspot_id=? AND server_homeoilist_id=?"

    .line 1493
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1496
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1498
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1500
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1501
    .local v6, "count":I
    if-nez v6, :cond_1

    .line 1502
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1504
    .local v11, "newUri":Landroid/net/Uri;
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    .end local v11    # "newUri":Landroid/net/Uri;
    :goto_1
    if-eqz v7, :cond_0

    .line 1514
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1517
    .end local v6    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1506
    .restart local v6    # "count":I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1508
    .local v12, "ret":I
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating the values for Home OI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1510
    .end local v6    # "count":I
    .end local v12    # "ret":I
    :catch_0
    move-exception v8

    .line 1511
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1513
    if-eqz v7, :cond_0

    .line 1514
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1513
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 1514
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1520
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v9    # "homeOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private addMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I
    .locals 4
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x33

    .line 1266
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToFQDN(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Ljava/lang/Boolean;

    move-result-object v0

    .line 1267
    .local v0, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1268
    const-string v2, "HotspotDBHandler"

    const-string v3, "addMO: Failed to add the PPSMO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_0
    :goto_0
    return v1

    .line 1271
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToHotspot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1272
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1273
    const-string v2, "HotspotDBHandler"

    const-string v3, "addMO: Failed to add the PPSMO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1276
    :cond_2
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    if-eqz v2, :cond_3

    .line 1277
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addtoPreferredRoamingPartner(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1278
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToMinBackHaulThreshold(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1279
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToSPExclusionList(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1280
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToRequiredProtoPortTupple(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1281
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToPolicyUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1283
    :cond_3
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1284
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToAAAServerTrustRoot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1286
    :cond_4
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    if-eqz v2, :cond_5

    .line 1287
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToSubscriptionUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1290
    :cond_5
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    if-eqz v2, :cond_7

    .line 1291
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addNetworkID(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1292
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1293
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addOtherHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1297
    :goto_1
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    if-eqz v2, :cond_6

    .line 1298
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addCredential(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1300
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x32

    goto :goto_0

    .line 1295
    :cond_7
    const-string v2, "HotspotDBHandler"

    const-string v3, "addMO: HomeSP is coming NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private addNetworkID(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 14
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1523
    const-string v0, "HotspotDBHandler"

    const-string v1, "Adding Network ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1525
    .local v13, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1526
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    .line 1527
    .local v10, "networkID":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    const-string v0, "server_network_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->networkID:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const-string v0, "ssid"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->ssid:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const-string v0, "hessid"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->hessid:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    const-string v3, "hotspot_id=? AND server_network_id=?"

    .line 1533
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->networkID:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1536
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1538
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1540
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1541
    .local v6, "count":I
    if-nez v6, :cond_1

    .line 1542
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1545
    .local v11, "newUri":Landroid/net/Uri;
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1555
    .end local v11    # "newUri":Landroid/net/Uri;
    :goto_1
    if-eqz v7, :cond_0

    .line 1556
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1559
    .end local v6    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1547
    .restart local v6    # "count":I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1550
    .local v12, "ret":I
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating the values for Network ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1552
    .end local v6    # "count":I
    .end local v12    # "ret":I
    :catch_0
    move-exception v8

    .line 1553
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1555
    if-eqz v7, :cond_0

    .line 1556
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1555
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 1556
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1562
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "networkID":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    :cond_3
    return-void
.end method

.method private addOtherHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 12
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1444
    const-string v0, "HotspotDBHandler"

    const-string v1, "Adding Other HomeOi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1446
    .local v11, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1447
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;

    .line 1448
    .local v10, "otherHomePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    const-string v0, "server_otherhome_network_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    const-string v0, "fqdn"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->fqdn:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    const-string v3, "hotspot_id=? AND server_otherhome_network_id=?"

    .line 1454
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1457
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1459
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1462
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1463
    .local v6, "count":I
    if-nez v6, :cond_1

    .line 1464
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    :goto_1
    if-eqz v7, :cond_0

    .line 1474
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1477
    .end local v6    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1467
    .restart local v6    # "count":I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1470
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 1471
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1473
    if-eqz v7, :cond_0

    .line 1474
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1473
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 1474
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1480
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "otherHomePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    :cond_3
    return-void
.end method

.method private addToAAAServerTrustRoot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 13
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1621
    const-string v0, "HotspotDBHandler"

    const-string v1, "Adding AAA Trustroot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1623
    .local v12, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1624
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    .line 1625
    .local v6, "aaaServerTrustRoot":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    const-string v0, "server_trustroot_id"

    iget-object v1, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootID:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    const-string v0, "certurl"

    iget-object v1, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const-string v0, "cert_sha256_finger_print"

    iget-object v1, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    const-string v3, "hotspot_id=? AND server_trustroot_id=?"

    .line 1634
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootID:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1637
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1639
    .local v8, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1641
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1642
    .local v7, "count":I
    if-nez v7, :cond_1

    .line 1643
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1645
    .local v11, "newUri":Landroid/net/Uri;
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    .end local v11    # "newUri":Landroid/net/Uri;
    :goto_1
    if-eqz v8, :cond_0

    .line 1654
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1657
    .end local v7    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1647
    .restart local v7    # "count":I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1650
    .end local v7    # "count":I
    :catch_0
    move-exception v9

    .line 1651
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1653
    if-eqz v8, :cond_0

    .line 1654
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1653
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 1654
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1660
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "aaaServerTrustRoot":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    .end local v8    # "cur":Landroid/database/Cursor;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private addToFQDN(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Ljava/lang/Boolean;
    .locals 12
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .param p2, "operation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1304
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1305
    .local v11, "values":Landroid/content/ContentValues;
    if-nez p2, :cond_2

    .line 1306
    const-string v0, "fqdn"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const-string v0, "ppsmo_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToFQDN: ppsmo.updateIdentifier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    if-lez v0, :cond_0

    .line 1310
    const-string v0, "update_identifier"

    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1314
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_1

    .line 1315
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToFQDN: URI for FQDN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    .line 1317
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1354
    .end local v10    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 1319
    .restart local v10    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1323
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v3, "fqdn=? AND ppsmo_id=?"

    .line 1325
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1328
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1330
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1332
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1333
    .local v6, "count":I
    if-eqz v6, :cond_3

    const/4 v0, 0x1

    if-le v6, v0, :cond_4

    .line 1334
    :cond_3
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToFQDN: FQDN entry doesnt exists/ More than one entry exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1337
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1339
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1340
    iget v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    if-lez v0, :cond_5

    .line 1341
    const-string v0, "update_identifier"

    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1342
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1344
    .local v9, "ret":I
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToFQDN: FQDN updation status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    .end local v9    # "ret":I
    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1346
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 1347
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_6

    .line 1348
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1350
    :cond_6
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToFQDN: FQDN exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private addToHotspot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Z
    .locals 6
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .param p2, "typeOfOperation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1879
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1880
    .local v2, "values":Landroid/content/ContentValues;
    if-nez p2, :cond_0

    .line 1881
    const-string v3, "hotspot_id"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    :cond_0
    const-string v3, "subscription_priority"

    iget v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1886
    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    if-eqz v3, :cond_1

    .line 1887
    const-string v3, "uri"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->URI:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    if-eqz v3, :cond_1

    .line 1889
    const-string v3, "certurl"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const-string v3, "cert_sha256_finger_print"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    :cond_1
    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    if-eqz v3, :cond_2

    .line 1897
    const-string v3, "creation_date"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->creationDate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    const-string v3, "expiration_date"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->expirationDate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    const-string v3, "type_of_subscription"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->typeOfSubscription:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    if-eqz v3, :cond_2

    .line 1904
    const-string v3, "start_date"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->startDate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    const-string v3, "date_limit"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->dataLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1908
    const-string v3, "time_limit"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->timeLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1910
    const-string v3, "usage_interval"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->usageInterval:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1915
    :cond_2
    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    if-eqz v3, :cond_3

    .line 1916
    const-string v3, "fqdn"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    const-string v3, "friendly_name"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    const-string v3, "icon_url"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    const-string v3, "roamingconsortiumoi"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    :cond_3
    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->HS20_DB_ADD_OPERATION:I

    if-ne p2, v3, :cond_5

    .line 1923
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1932
    :cond_4
    :goto_0
    return v5

    .line 1924
    :cond_5
    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->HS20_DB_UPDATE_OPERATION:I

    if-ne p2, v3, :cond_4

    .line 1925
    const-string v0, "hotspot_id=?"

    .line 1926
    .local v0, "selection":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v4, v1, v3

    .line 1929
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addToMinBackHaulThreshold(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 12
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1792
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1793
    .local v11, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1794
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    .line 1795
    .local v10, "minBackHaulThreshold":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    const-string v0, "server_backhaul_threshold_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->minBackHaulThresholdID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    const-string v0, "dlbandwidh"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1800
    const-string v0, "network_type"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    const-string v0, "ulbandwidth"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->ulBandWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1804
    const-string v3, "hotspot_id=? AND server_backhaul_threshold_id=?"

    .line 1808
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->minBackHaulThresholdID:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1811
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1813
    .local v6, "backHaulCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1816
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1817
    .local v7, "count":I
    if-nez v7, :cond_1

    .line 1818
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1827
    :goto_1
    if-eqz v6, :cond_0

    .line 1828
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1831
    .end local v7    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1821
    .restart local v7    # "count":I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1824
    .end local v7    # "count":I
    :catch_0
    move-exception v8

    .line 1825
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1827
    if-eqz v6, :cond_0

    .line 1828
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1827
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1828
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1834
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "backHaulCur":Landroid/database/Cursor;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "minBackHaulThreshold":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    :cond_3
    return-void
.end method

.method private addToPolicyUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 12
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1663
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1664
    .local v9, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    if-eqz v0, :cond_3

    .line 1665
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    const-string v0, "type_of_node"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1667
    const-string v0, "other"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->other:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    const-string v0, "restriction"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->restriction:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string v0, "update_interval"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-wide v10, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateInterval:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1673
    const-string v0, "update_method"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    const-string v0, "uri"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->uri:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    if-eqz v0, :cond_0

    .line 1678
    const-string v0, "username"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    const-string v0, "password"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1683
    :cond_0
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    if-eqz v0, :cond_1

    .line 1684
    const-string v0, "certurl"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    const-string v0, "cert_sha256_finger_print"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .line 1691
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    const-string v1, "0"

    aput-object v1, v4, v0

    .line 1694
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1696
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1698
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1699
    .local v6, "count":I
    if-nez v6, :cond_4

    .line 1700
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    :goto_0
    if-eqz v7, :cond_2

    .line 1710
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1713
    .end local v6    # "count":I
    :cond_2
    :goto_1
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 1715
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    :cond_3
    return-void

    .line 1703
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "count":I
    .restart local v7    # "cur":Landroid/database/Cursor;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1706
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 1707
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1709
    if-eqz v7, :cond_2

    .line 1710
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1709
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 1710
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private addToRequiredProtoPortTupple(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 12
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1718
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1719
    .local v11, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1720
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    .line 1721
    .local v10, "protoPortTupple":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    const-string v0, "server_tupple_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->protoPortTuppleID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const-string v0, "ip_protocol"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->ipProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1725
    const-string v0, "port_number"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->portNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1726
    const-string v3, "hotspot_id=? AND server_tupple_id=?"

    .line 1728
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->protoPortTuppleID:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1731
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1733
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1735
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1736
    .local v6, "count":I
    if-nez v6, :cond_1

    .line 1737
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1745
    :goto_1
    if-eqz v7, :cond_0

    .line 1746
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1749
    .end local v6    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1739
    .restart local v6    # "count":I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1742
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 1743
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1745
    if-eqz v7, :cond_0

    .line 1746
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1745
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 1746
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1752
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "protoPortTupple":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    :cond_3
    return-void
.end method

.method private addToSPExclusionList(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 13
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1755
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1756
    .local v12, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1757
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;

    .line 1758
    .local v11, "spexclusion":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    const-string v0, "server_spexclusion_id"

    iget-object v1, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->id:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    const-string v0, "ssid"

    iget-object v1, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->ssid:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    const-string v3, "hotspot_id=? AND server_spexclusion_id=?"

    .line 1763
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->id:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1766
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1768
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1770
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1771
    .local v6, "count":I
    if-nez v6, :cond_1

    .line 1772
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1774
    .local v10, "newUri":Landroid/net/Uri;
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1782
    .end local v10    # "newUri":Landroid/net/Uri;
    :goto_1
    if-eqz v7, :cond_0

    .line 1783
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1786
    .end local v6    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1776
    .restart local v6    # "count":I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1779
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 1780
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1782
    if-eqz v7, :cond_0

    .line 1783
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1782
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 1783
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1789
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "spexclusion":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    :cond_3
    return-void
.end method

.method private addToSubscriptionUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 14
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1565
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1566
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    const-string v0, "type_of_node"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1568
    const-string v0, "other"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->other:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const-string v0, "restriction"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->restriction:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    const-string v0, "update_interval"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-wide v12, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateInterval:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1573
    const-string v0, "update_method"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    const-string v0, "uri"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->uri:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    if-eqz v0, :cond_0

    .line 1577
    const-string v0, "username"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const-string v0, "password"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1582
    :cond_0
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    if-eqz v0, :cond_1

    .line 1583
    const-string v0, "certurl"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    const-string v0, "cert_sha256_finger_print"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .line 1590
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const-string v0, "1"

    aput-object v0, v4, v2

    .line 1593
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1595
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1598
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1599
    .local v6, "count":I
    if-nez v6, :cond_3

    .line 1600
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 1603
    .local v9, "newUri":Landroid/net/Uri;
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1613
    .end local v9    # "newUri":Landroid/net/Uri;
    :goto_0
    if-eqz v7, :cond_2

    .line 1614
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1617
    .end local v6    # "count":I
    :cond_2
    :goto_1
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1618
    return-void

    .line 1605
    .restart local v6    # "count":I
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1608
    .local v10, "ret":I
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating the values for subscription update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1610
    .end local v6    # "count":I
    .end local v10    # "ret":I
    :catch_0
    move-exception v8

    .line 1611
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1613
    if-eqz v7, :cond_2

    .line 1614
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1613
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1614
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private addtoPreferredRoamingPartner(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 12
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1837
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1838
    .local v11, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1839
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    .line 1840
    .local v10, "preferredroamin":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    const-string v0, "country"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    const-string v0, "fqdn_match"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    const-string v0, "priority"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1846
    const-string v0, "server_roaming_partner_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->roamingPartnerID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    const-string v3, "hotspot_id=? AND server_roaming_partner_id=?"

    .line 1851
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->roamingPartnerID:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1854
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1856
    .local v9, "prefCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1858
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1859
    .local v6, "count":I
    if-nez v6, :cond_1

    .line 1860
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1869
    :goto_1
    if-eqz v9, :cond_0

    .line 1870
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1873
    .end local v6    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1863
    .restart local v6    # "count":I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1866
    .end local v6    # "count":I
    :catch_0
    move-exception v7

    .line 1867
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1869
    if-eqz v9, :cond_0

    .line 1870
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1869
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 1870
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1876
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "prefCur":Landroid/database/Cursor;
    .end local v10    # "preferredroamin":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    :cond_3
    return-void
.end method

.method private getPpsMoID(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 2123
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPpsMoID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    const-string v3, "hotspot_id=?"

    .line 2125
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 2129
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2131
    .local v7, "cr":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2133
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2134
    .local v6, "count":I
    if-eqz v6, :cond_0

    if-le v6, v10, :cond_2

    .line 2135
    :cond_0
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FQDN entry doesnt exists/ More than one entry exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2136
    const/4 v9, 0x0

    .line 2145
    .local v9, "ppsMoID":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_1

    .line 2146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2149
    .end local v6    # "count":I
    :cond_1
    :goto_1
    return-object v9

    .line 2138
    .end local v9    # "ppsMoID":Ljava/lang/String;
    .restart local v6    # "count":I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2139
    const-string v0, "ppsmo_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .restart local v9    # "ppsMoID":Ljava/lang/String;
    goto :goto_0

    .line 2141
    .end local v6    # "count":I
    .end local v9    # "ppsMoID":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 2142
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPpsMoID: FQDN exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2143
    const/4 v9, 0x0

    .line 2145
    .restart local v9    # "ppsMoID":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 2146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2145
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "ppsMoID":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 2146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getSPExclusionList(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    if-nez p2, :cond_1

    .line 283
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSPExclusionList: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 285
    if-nez p2, :cond_1

    .line 286
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSPExclusionList: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v11, 0x0

    .line 326
    :cond_0
    :goto_0
    return-object v11

    .line 290
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 291
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 294
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 295
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 297
    .local v11, "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 298
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 299
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSPExclusionList: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-eqz v7, :cond_3

    .line 301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_3
    const/4 v11, 0x0

    .line 322
    .end local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    if-eqz v7, :cond_0

    .line 323
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 305
    .restart local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 306
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 307
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    .end local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .local v12, "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_5

    .line 309
    :try_start_2
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;-><init>()V

    .line 310
    .local v10, "spExclusion":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    const-string v0, "server_spexclusion_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->id:Ljava/lang/String;

    .line 312
    const-string v0, "ssid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->ssid:Ljava/lang/String;

    .line 314
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 308
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 322
    .end local v10    # "spExclusion":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    :cond_5
    if-eqz v7, :cond_7

    .line 323
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    goto :goto_0

    .line 317
    .end local v6    # "count":I
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .line 318
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSPExclusionList: Exception Occurred, setting Exclusion List to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 320
    const/4 v11, 0x0

    .line 322
    if-eqz v7, :cond_0

    .line 323
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 322
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    .line 323
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 322
    .end local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v6    # "count":I
    .restart local v9    # "i":I
    .restart local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    goto :goto_3

    .line 317
    .end local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    goto :goto_2

    .end local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    :cond_7
    move-object v11, v12

    .end local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    goto/16 :goto_0
.end method

.method private getUpdateIdentifier(Ljava/lang/String;)I
    .locals 11
    .param p1, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 2187
    const-string v3, "hotspot_id=?"

    .line 2188
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 2192
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2194
    .local v7, "cr":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2196
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2197
    .local v6, "count":I
    if-eqz v6, :cond_0

    if-le v6, v10, :cond_1

    .line 2198
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2210
    .end local v6    # "count":I
    :goto_0
    return v9

    .line 2201
    .restart local v6    # "count":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2202
    const-string v0, "update_identifier"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2209
    .local v9, "updateIdentifier":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2205
    .end local v6    # "count":I
    .end local v9    # "updateIdentifier":I
    :catch_0
    move-exception v8

    .line 2206
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateIdentifier:FQDN exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I
    .locals 4
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0x33

    .line 1222
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToFQDN(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Ljava/lang/Boolean;

    move-result-object v0

    .line 1223
    .local v0, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1224
    const-string v2, "HotspotDBHandler"

    const-string v3, "updateMO: Failed to add the PPSMO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_0
    :goto_0
    return v1

    .line 1227
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToHotspot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1228
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1229
    const-string v2, "HotspotDBHandler"

    const-string v3, "updateMO: Failed to add the PPSMO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1232
    :cond_2
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    if-eqz v2, :cond_3

    .line 1233
    const-string v2, "HotspotDBHandler"

    const-string v3, "policy object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addtoPreferredRoamingPartner(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1235
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToMinBackHaulThreshold(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1236
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToSPExclusionList(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1237
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToRequiredProtoPortTupple(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1238
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToPolicyUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1240
    :cond_3
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1241
    const-string v2, "HotspotDBHandler"

    const-string v3, "updateMO: aaaServerTrustRootObj object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToAAAServerTrustRoot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1244
    :cond_4
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    if-eqz v2, :cond_5

    .line 1245
    const-string v2, "HotspotDBHandler"

    const-string v3, "updateMO: subscriptionUpdate object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToSubscriptionUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1249
    :cond_5
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    if-eqz v2, :cond_7

    .line 1250
    const-string v2, "HotspotDBHandler"

    const-string v3, "updateMO: homeSPObj object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addNetworkID(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1252
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1253
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addOtherHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1257
    :goto_1
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    if-eqz v2, :cond_6

    .line 1258
    const-string v2, "HotspotDBHandler"

    const-string v3, "updateMO: credentialObj object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addCredential(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1261
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x32

    goto :goto_0

    .line 1255
    :cond_7
    const-string v2, "HotspotDBHandler"

    const-string v3, "updateMO: HomeSP is coming NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addPPSMONode(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I
    .locals 13
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    .prologue
    const/4 v12, 0x1

    .line 1036
    const/16 v10, 0x32

    .line 1037
    .local v10, "retVal":I
    if-nez p1, :cond_0

    .line 1038
    const-string v1, "HotspotDBHandler"

    const-string v2, "addPPSMONode: Not a valid PPSMO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/16 v1, 0x33

    .line 1078
    :goto_0
    return v1

    .line 1042
    :cond_0
    :try_start_0
    const-string v1, "HotspotDBHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPPSMONode: Nppsmo.ppsMoId "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Fqdn"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Action"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v9, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    .line 1045
    .local v9, "ppsMoId":Ljava/lang/String;
    const-string v3, "ppsmo_id=? AND fqdn=?"

    .line 1047
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    aput-object v2, v4, v1

    .line 1050
    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1051
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1053
    .local v7, "dbCur":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 1054
    const-string v1, "HotspotDBHandler"

    const-string v2, "addPPSMONode: Database doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/16 v1, 0x3b

    goto :goto_0

    .line 1057
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1058
    .local v6, "count":I
    if-nez v6, :cond_2

    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    if-nez v1, :cond_2

    .line 1059
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I

    move-result v10

    .line 1074
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v1, v10

    .line 1075
    goto :goto_0

    .line 1060
    :cond_2
    if-ne v6, v12, :cond_3

    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    if-nez v1, :cond_3

    .line 1061
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    const-string v2, "Already Subscribed. Clear Cred to subscribe again"

    const/4 v5, 0x1

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1063
    .local v11, "toast":Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1064
    const/16 v10, 0x35

    .line 1065
    goto :goto_1

    .end local v11    # "toast":Landroid/widget/Toast;
    :cond_3
    if-ne v6, v12, :cond_4

    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    if-ne v1, v12, :cond_4

    .line 1066
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1067
    const-string v1, "hotspot_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    .line 1069
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->updateMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I

    move-result v10

    goto :goto_1

    .line 1071
    :cond_4
    const-string v1, "HotspotDBHandler"

    const-string v2, "addPPSMONode: The same entry already exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    const/16 v10, 0x35

    goto :goto_1

    .line 1076
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v6    # "count":I
    .end local v7    # "dbCur":Landroid/database/Cursor;
    .end local v9    # "ppsMoId":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1077
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1078
    const/16 v1, 0x35

    goto/16 :goto_0
.end method

.method public addPPSMONodeFromCred(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I
    .locals 13
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    .prologue
    const/16 v11, 0x33

    const/4 v12, 0x1

    .line 1083
    const/16 v10, 0x32

    .line 1084
    .local v10, "retVal":I
    if-nez p1, :cond_0

    .line 1085
    const-string v1, "HotspotDBHandler"

    const-string v2, "addPPSMONodeFromCred: Not a valid PPSMO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v11

    .line 1120
    :goto_0
    return v1

    .line 1089
    :cond_0
    :try_start_0
    const-string v1, "HotspotDBHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPPSMONodeFromCred: Nppsmo.ppsMoId "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Fqdn"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Action"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v9, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    .line 1092
    .local v9, "ppsMoId":Ljava/lang/String;
    const-string v3, "ppsmo_id=? AND fqdn=?"

    .line 1094
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    aput-object v2, v4, v1

    .line 1097
    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1098
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1100
    .local v7, "dbCur":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 1101
    const-string v1, "HotspotDBHandler"

    const-string v2, "addPPSMONodeFromCred: Database doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/16 v1, 0x3b

    goto :goto_0

    .line 1104
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1105
    .local v6, "count":I
    if-nez v6, :cond_2

    .line 1106
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I

    move-result v10

    .line 1116
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v1, v10

    .line 1117
    goto :goto_0

    .line 1107
    :cond_2
    if-ne v6, v12, :cond_3

    .line 1108
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1109
    const-string v1, "hotspot_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    .line 1111
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->updateMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I

    move-result v10

    goto :goto_1

    .line 1113
    :cond_3
    const-string v1, "HotspotDBHandler"

    const-string v2, "addPPSMONodeFromCred: More than one entry exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    const/16 v10, 0x33

    goto :goto_1

    .line 1118
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v6    # "count":I
    .end local v7    # "dbCur":Landroid/database/Cursor;
    .end local v9    # "ppsMoId":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1119
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v11

    .line 1120
    goto/16 :goto_0
.end method

.method public addToSpIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;

    .prologue
    .line 1993
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1994
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "sp_icon_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    const-string v2, "sp_icon_type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    const-string v2, "sp_icon_hash"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1998
    .local v0, "newUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1999
    const-string v2, "HotspotDBHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    const/4 v2, 0x1

    .line 2002
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteSubscription(I)V
    .locals 4
    .param p1, "hotspotID"    # I

    .prologue
    .line 1155
    const-string v1, "hotspot_id=?"

    .line 1156
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1159
    .local v0, "selectArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1160
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1161
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1162
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1163
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1164
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1165
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1166
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1167
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1168
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1169
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1170
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1171
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1172
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1173
    return-void
.end method

.method public deleteTheContents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1125
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1126
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1127
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1128
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1129
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1132
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1133
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1134
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1135
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1137
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1138
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1139
    return-void
.end method

.method public deleteppsMO(I)V
    .locals 4
    .param p1, "credentialID"    # I

    .prologue
    .line 1142
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v1

    .line 1143
    .local v1, "hotspotID":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1144
    const-string v2, "HotspotDBHandler"

    const-string v3, "Entry doesn\'t exists "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :goto_0
    return-void

    .line 1148
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteSubscription(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1149
    :catch_0
    move-exception v0

    .line 1150
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HotspotDBHandler"

    const-string v3, "Exception occurred [FATAL]"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableSubscription(IZ)Z
    .locals 12
    .param p1, "hotspotID"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1176
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1177
    .local v10, "stbuilder":Ljava/lang/StringBuilder;
    const-string v0, "hotspot_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    const-string v0, "=?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1180
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1183
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1185
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1187
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1188
    :cond_0
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHotspotId: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    if-eqz v7, :cond_1

    .line 1190
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    :cond_1
    const/4 v0, 0x0

    .line 1207
    if-eqz v7, :cond_2

    .line 1208
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1217
    :cond_2
    :goto_0
    return v0

    .line 1194
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1195
    .local v6, "count":I
    const/4 v0, 0x1

    if-le v6, v0, :cond_4

    .line 1196
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHotspotId: More than 2 entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1198
    const/4 v0, 0x0

    .line 1207
    if-eqz v7, :cond_2

    .line 1208
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1207
    :cond_4
    if-eqz v7, :cond_5

    .line 1208
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1211
    :cond_5
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1212
    .local v11, "values":Landroid/content/ContentValues;
    const-string v1, "enable_subscr"

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1213
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1214
    .local v9, "status":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_9

    .line 1215
    const/4 v0, 0x1

    goto :goto_0

    .line 1200
    .end local v6    # "count":I
    .end local v9    # "status":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 1201
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1202
    if-eqz v7, :cond_6

    .line 1203
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1205
    :cond_6
    const/4 v0, 0x0

    .line 1207
    if-eqz v7, :cond_2

    .line 1208
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1207
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 1208
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 1212
    .restart local v6    # "count":I
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 1217
    .restart local v9    # "status":I
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAAATrustRoot(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    if-nez p2, :cond_1

    .line 95
    const-string v0, "HotspotDBHandler"

    const-string v1, "getAAATrustRoot: Check for one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 97
    if-nez p2, :cond_1

    .line 98
    const-string v0, "HotspotDBHandler"

    const-string v1, "getAAATrustRoot: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v7, 0x0

    .line 145
    :cond_0
    :goto_0
    return-object v7

    .line 102
    :cond_1
    const-string v3, ""

    .line 103
    .local v3, "selection":Ljava/lang/String;
    const-string v3, "hotspot_id=?"

    .line 104
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 107
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 108
    .local v10, "dbCur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 110
    .local v7, "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 111
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 112
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getAAATrustRoot: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz v10, :cond_3

    .line 114
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_3
    const/4 v7, 0x0

    .line 141
    .end local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    if-eqz v10, :cond_0

    .line 142
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 118
    .restart local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    :cond_4
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 119
    .local v9, "count":I
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AAAATrust root "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    const/4 v6, 0x0

    .line 122
    .local v6, "aaaserverTrust":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .end local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .local v8, "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_5

    .line 124
    :try_start_2
    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    .end local v6    # "aaaserverTrust":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    invoke-direct {v6}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;-><init>()V

    .line 125
    .restart local v6    # "aaaserverTrust":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    const-string v0, "server_trustroot_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootID:Ljava/lang/String;

    .line 128
    const-string v0, "certurl"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootURL:Ljava/lang/String;

    .line 131
    const-string v0, "cert_sha256_finger_print"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    .line 134
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 141
    :cond_5
    if-eqz v10, :cond_7

    .line 142
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .end local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    goto/16 :goto_0

    .line 137
    .end local v6    # "aaaserverTrust":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    .end local v9    # "count":I
    .end local v12    # "i":I
    :catch_0
    move-exception v11

    .line 138
    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    const/4 v7, 0x0

    .line 141
    if-eqz v10, :cond_0

    .line 142
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 141
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v10, :cond_6

    .line 142
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 141
    .end local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v9    # "count":I
    .restart local v12    # "i":I
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    goto :goto_3

    .line 137
    .end local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    :catch_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    goto :goto_2

    .end local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v6    # "aaaserverTrust":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    .restart local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    :cond_7
    move-object v7, v8

    .end local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    goto/16 :goto_0
.end method

.method public getCredentialId(I)I
    .locals 11
    .param p1, "hsId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2852
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCredentialId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    const-string v3, "hotspot_id=?"

    .line 2854
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 2857
    .local v4, "selectArgs":[Ljava/lang/String;
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "credential_id"

    aput-object v0, v2, v10

    .line 2860
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, -0x1

    .line 2861
    .local v6, "credId":I
    const/4 v7, 0x0

    .line 2863
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2865
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v9, :cond_3

    .line 2866
    :cond_0
    if-eqz v7, :cond_1

    .line 2867
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2869
    :cond_1
    const/4 v0, -0x1

    .line 2878
    if-eqz v7, :cond_2

    .line 2879
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2882
    :cond_2
    :goto_0
    return v0

    .line 2871
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2872
    const-string v0, "credential_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2874
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2878
    if-eqz v7, :cond_4

    .line 2879
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v0, v6

    .line 2882
    goto :goto_0

    .line 2875
    :catch_0
    move-exception v8

    .line 2876
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2878
    if-eqz v7, :cond_4

    .line 2879
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2878
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 2879
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public getCredentialIds()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 2533
    const-string v0, "HotspotDBHandler"

    const-string v1, "getCredentialIds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "credential_id"

    aput-object v1, v2, v0

    .line 2537
    .local v2, "projection":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 2538
    .local v10, "dbCur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 2540
    .local v7, "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2542
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2543
    :cond_0
    if-eqz v10, :cond_1

    .line 2544
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2563
    :cond_1
    if-eqz v10, :cond_2

    .line 2564
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v13

    .line 2567
    :goto_0
    return-object v0

    .line 2548
    :cond_3
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2549
    .local v6, "count":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2550
    .end local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v8, "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2551
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v6, :cond_4

    .line 2552
    const-string v0, "credential_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2555
    .local v9, "credentialID":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2556
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 2551
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2558
    .end local v9    # "credentialID":I
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2563
    if-eqz v10, :cond_7

    .line 2564
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .end local v6    # "count":I
    .end local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "i":I
    .restart local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5
    :goto_2
    move-object v0, v7

    .line 2567
    goto :goto_0

    .line 2559
    :catch_0
    move-exception v11

    .line 2560
    .local v11, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2561
    const/4 v7, 0x0

    .line 2563
    if-eqz v10, :cond_5

    .line 2564
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2563
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v10, :cond_6

    .line 2564
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2563
    .end local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "count":I
    .restart local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_4

    .line 2559
    .end local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_3

    .end local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "i":I
    :cond_7
    move-object v7, v8

    .end local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_2
.end method

.method public getDigitalCertificateInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;
    .locals 2
    .param p1, "dbCur"    # Landroid/database/Cursor;

    .prologue
    .line 826
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;-><init>()V

    .line 827
    .local v0, "digitalCert":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;
    const-string v1, "certificate_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certificateType:Ljava/lang/String;

    .line 829
    const-string v1, "cert_sha256_finger_print"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    .line 831
    const-string v1, "cert_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certID:I

    .line 832
    const-string v1, "client_cert_hash"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->clientcertHash:Ljava/lang/String;

    .line 834
    const-string v1, "private_key_hash"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->privateKeyHash:Ljava/lang/String;

    .line 836
    return-object v0
.end method

.method public getEAPInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;
    .locals 2
    .param p1, "dbCur"    # Landroid/database/Cursor;

    .prologue
    .line 859
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;-><init>()V

    .line 860
    .local v0, "eapMethod":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;
    const-string v1, "eap_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    .line 861
    const-string v1, "inner_method"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    .line 863
    const-string v1, "inner_eaptype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerEAPType:Ljava/lang/String;

    .line 865
    const-string v1, "inner_vendor_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorID:I

    .line 867
    const-string v1, "inner_vendor_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorType:I

    .line 869
    const-string v1, "vendor_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorID:I

    .line 871
    const-string v1, "vendor_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorType:I

    .line 873
    return-object v0
.end method

.method public getEnableSubscription(I)Z
    .locals 12
    .param p1, "hotspotID"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2153
    const-string v0, "HotspotDBHandler"

    const-string v1, "getEnableSubscription"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    const-string v3, "hotspot_id=?"

    .line 2155
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 2158
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v9, 0x1

    .line 2159
    .local v9, "enableSubscription":Z
    const/4 v7, 0x0

    .line 2161
    .local v7, "cr":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2163
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2164
    .local v6, "count":I
    if-eqz v6, :cond_0

    if-le v6, v10, :cond_2

    .line 2165
    :cond_0
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnableSubscription : FQDN entry doesnt exists/ More than one entry exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2168
    const/4 v9, 0x0

    .line 2179
    :goto_0
    if-eqz v7, :cond_1

    .line 2180
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2183
    .end local v6    # "count":I
    :cond_1
    :goto_1
    return v9

    .line 2170
    .restart local v6    # "count":I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2171
    const-string v0, "enable_subscr"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, v10, :cond_3

    move v9, v10

    :goto_2
    goto :goto_0

    :cond_3
    move v9, v11

    goto :goto_2

    .line 2175
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 2176
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnableSubscription: FQDN exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2177
    const/4 v9, 0x0

    .line 2179
    if-eqz v7, :cond_1

    .line 2180
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2179
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 2180
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getFqdn(I)Ljava/lang/String;
    .locals 14
    .param p1, "credentialID"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 696
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v10

    .line 697
    .local v10, "hotspotID":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 698
    const-string v0, "HotspotDBHandler"

    const-string v1, "getFqdn: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v12

    .line 738
    :cond_0
    :goto_0
    return-object v9

    .line 701
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .local v11, "stbuilder":Ljava/lang/StringBuilder;
    const-string v0, "hotspot_id"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const-string v0, "=?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 705
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v13, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v10, v4, v0

    .line 708
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 709
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 711
    .local v9, "fqdn":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 713
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 714
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getFqdn: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    if-eqz v7, :cond_3

    .line 716
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    :cond_3
    if-eqz v7, :cond_4

    .line 735
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v12

    goto :goto_0

    .line 720
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 721
    .local v6, "count":I
    if-le v6, v13, :cond_7

    .line 722
    const-string v0, "HotspotDBHandler"

    const-string v1, "getFqdn: More than 2 entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    if-eqz v7, :cond_6

    .line 735
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v12

    goto :goto_0

    .line 726
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 727
    const-string v0, "fqdn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 728
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFqdn:FQDN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 734
    if-eqz v7, :cond_0

    .line 735
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 729
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 730
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 731
    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception occurred, Setting fqdn to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 732
    const/4 v9, 0x0

    .line 734
    if-eqz v7, :cond_0

    .line 735
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 734
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    .line 735
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public getHomeOInfo(ILjava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2388
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHomeOInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    if-nez p2, :cond_1

    .line 2390
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 2391
    if-nez p2, :cond_1

    .line 2392
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHomeOInfo:Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    const/4 v10, 0x0

    .line 2438
    :cond_0
    :goto_0
    return-object v10

    .line 2396
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 2397
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 2400
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2401
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 2403
    .local v10, "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2405
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 2406
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHomeOInfo :Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    if-eqz v7, :cond_3

    .line 2408
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2410
    :cond_3
    const/4 v10, 0x0

    .line 2434
    .end local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    if-eqz v7, :cond_0

    .line 2435
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2412
    .restart local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2413
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2414
    const/4 v9, 0x0

    .line 2415
    .local v9, "homeSPOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2416
    .end local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .local v11, "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v6, :cond_6

    .line 2417
    :try_start_2
    new-instance v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    .end local v9    # "homeSPOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    invoke-direct {v9}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;-><init>()V

    .line 2418
    .restart local v9    # "homeSPOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    const-string v0, "server_homeoilist_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    .line 2421
    const-string v0, "homeoi"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOI:Ljava/lang/String;

    .line 2423
    const-string v0, "homeoirequired"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOIRequired:Z

    .line 2426
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2427
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2416
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2423
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 2429
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2434
    if-eqz v7, :cond_8

    .line 2435
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v10, v11

    .end local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    goto/16 :goto_0

    .line 2430
    .end local v6    # "count":I
    .end local v9    # "homeSPOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    .end local v12    # "i":I
    :catch_0
    move-exception v8

    .line 2431
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2432
    const/4 v10, 0x0

    .line 2434
    if-eqz v7, :cond_0

    .line 2435
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2434
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_7

    .line 2435
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 2434
    .end local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v6    # "count":I
    .restart local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v12    # "i":I
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    goto :goto_4

    .line 2430
    .end local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    :catch_1
    move-exception v8

    move-object v10, v11

    .end local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    goto :goto_3

    .end local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v9    # "homeSPOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    .restart local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    :cond_8
    move-object v10, v11

    .end local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    goto/16 :goto_0
.end method

.method public getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2219
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHomeSPInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    if-nez p2, :cond_1

    .line 2221
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 2222
    if-nez p2, :cond_1

    .line 2223
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHomeSPInfo: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    .line 2270
    :cond_0
    :goto_0
    return-object v9

    .line 2227
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 2228
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 2231
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2232
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2234
    .local v9, "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2236
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 2237
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHomeSPInfo: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    if-eqz v7, :cond_3

    .line 2239
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2266
    :cond_3
    if-eqz v7, :cond_4

    .line 2267
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    .line 2243
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2244
    .local v6, "count":I
    if-le v6, v12, :cond_7

    .line 2245
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHomeSPInfo: More than 1 entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2266
    if-eqz v7, :cond_6

    .line 2267
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v11

    goto :goto_0

    .line 2249
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2250
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2251
    .end local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .local v10, "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :try_start_3
    const-string v0, "fqdn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    .line 2253
    const-string v0, "friendly_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    .line 2255
    const-string v0, "icon_url"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;

    .line 2257
    const-string v0, "roamingconsortiumoi"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    .line 2259
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeOInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    .line 2260
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getNetworkIDInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    .line 2261
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getOtherHomePartner(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    .line 2262
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2266
    if-eqz v7, :cond_9

    .line 2267
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    goto/16 :goto_0

    .line 2263
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 2264
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2266
    if-eqz v7, :cond_0

    .line 2267
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2266
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_8

    .line 2267
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 2266
    .end local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v6    # "count":I
    .restart local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    goto :goto_2

    .line 2263
    .end local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    goto :goto_1

    .end local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :cond_9
    move-object v9, v10

    .end local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    goto/16 :goto_0
.end method

.method public getHotspotID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "ppsmoID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 2886
    const-string v3, "fqdn=? AND ppsmo_id=?"

    .line 2888
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHotspotID : fqdn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PPSMO ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    aput-object p2, v4, v12

    .line 2892
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 2893
    .local v10, "id":I
    const/4 v7, 0x0

    .line 2894
    .local v7, "cr":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2896
    .local v9, "hotspotID":I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2898
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2899
    .local v6, "count":I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2900
    .local v11, "values":Landroid/content/ContentValues;
    if-nez v6, :cond_2

    .line 2901
    move v9, v6

    .line 2910
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 2911
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2914
    .end local v6    # "count":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    return v9

    .line 2902
    .restart local v6    # "count":I
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_2
    if-ne v6, v12, :cond_0

    .line 2903
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2904
    const-string v0, "hotspot_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 2905
    move v9, v10

    goto :goto_0

    .line 2907
    .end local v6    # "count":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 2908
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHotspotID: Exception occured :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2910
    if-eqz v7, :cond_1

    .line 2911
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2910
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 2911
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getHotspotId(I)Ljava/lang/String;
    .locals 11
    .param p1, "credentialID"    # I

    .prologue
    const/4 v10, 0x0

    .line 660
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .local v9, "stbuilder":Ljava/lang/StringBuilder;
    const-string v0, "credential_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string v0, "=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 664
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 667
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 668
    .local v6, "dbCur":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 670
    .local v8, "hotspotID":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 672
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 673
    :cond_0
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHotspotId: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    if-eqz v6, :cond_1

    .line 675
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :cond_1
    if-eqz v6, :cond_2

    .line 689
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    .line 692
    :goto_0
    return-object v0

    .line 679
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 680
    const-string v0, "hotspot_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 682
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHotspotId: Hotspot ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    if-eqz v6, :cond_4

    .line 689
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v0, v8

    .line 692
    goto :goto_0

    .line 683
    :catch_0
    move-exception v7

    .line 684
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 685
    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception occurred, Setting hotspotID to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 686
    const/4 v8, 0x0

    .line 688
    if-eqz v6, :cond_4

    .line 689
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 688
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 689
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public getHotspotIds()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 2571
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHotspotIds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "hotspot_id"

    aput-object v1, v2, v0

    .line 2575
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2576
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2578
    .local v9, "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2580
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2581
    :cond_0
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHotspotIds:Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    if-eqz v7, :cond_1

    .line 2583
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2601
    :cond_1
    if-eqz v7, :cond_2

    .line 2602
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v13

    .line 2605
    :goto_0
    return-object v0

    .line 2587
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2588
    .local v6, "count":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2589
    .end local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v10, "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2590
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v6, :cond_4

    .line 2591
    const-string v0, "hotspot_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2593
    .local v11, "hotspotId":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2594
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2590
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2596
    .end local v11    # "hotspotId":I
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2601
    if-eqz v7, :cond_7

    .line 2602
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v6    # "count":I
    .end local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "i":I
    .restart local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5
    :goto_2
    move-object v0, v9

    .line 2605
    goto :goto_0

    .line 2597
    :catch_0
    move-exception v8

    .line 2598
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2599
    const/4 v9, 0x0

    .line 2601
    if-eqz v7, :cond_5

    .line 2602
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2601
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_6

    .line 2602
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2601
    .end local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "count":I
    .restart local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_4

    .line 2597
    .end local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_3

    .end local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "i":I
    :cond_7
    move-object v9, v10

    .end local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_2
.end method

.method public getMethodType(I)I
    .locals 12
    .param p1, "credentialID"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 2496
    const-string v0, "HotspotDBHandler"

    const-string v1, "getMethodType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    const-string v3, "credential_id=?"

    .line 2498
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2501
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v9, -0x1

    .line 2502
    .local v9, "methodType":I
    const/4 v7, 0x0

    .line 2504
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2506
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2507
    :cond_0
    const-string v0, "HotspotDBHandler"

    const-string v1, "getMethodType: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    if-eqz v7, :cond_1

    .line 2509
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2525
    :cond_1
    if-eqz v7, :cond_2

    .line 2526
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v10

    .line 2529
    :goto_0
    return v0

    .line 2513
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2514
    .local v6, "count":I
    if-le v6, v11, :cond_5

    .line 2515
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2525
    if-eqz v7, :cond_4

    .line 2526
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v10

    goto :goto_0

    .line 2518
    :cond_5
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2519
    const-string v0, "method_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2521
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2525
    if-eqz v7, :cond_6

    .line 2526
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_6
    :goto_1
    move v0, v9

    .line 2529
    goto :goto_0

    .line 2522
    :catch_0
    move-exception v8

    .line 2523
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2525
    if-eqz v7, :cond_6

    .line 2526
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2525
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 2526
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public getMinBackHaulThresholdInfo(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    if-nez p2, :cond_1

    .line 607
    const-string v0, "HotspotDBHandler"

    const-string v1, "getMinBackHaulThresholdInfo: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 609
    if-nez p2, :cond_1

    .line 610
    const-string v0, "HotspotDBHandler"

    const-string v1, "getMinBackHaulThresholdInfo: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v7, 0x0

    .line 656
    :cond_0
    :goto_0
    return-object v7

    .line 614
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 615
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 618
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 619
    .local v10, "dbCur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 621
    .local v7, "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 623
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 624
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getMinBackHaulThresholdInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    if-eqz v10, :cond_3

    .line 626
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    :cond_3
    const/4 v7, 0x0

    .line 652
    .end local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    if-eqz v10, :cond_0

    .line 653
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 630
    .restart local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    :cond_4
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 631
    .local v9, "count":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 632
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    .end local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .local v8, "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_5

    .line 635
    :try_start_2
    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    invoke-direct {v6}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;-><init>()V

    .line 636
    .local v6, "backHaulThreshold":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    const-string v0, "server_backhaul_threshold_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->minBackHaulThresholdID:Ljava/lang/String;

    .line 638
    const-string v0, "dlbandwidh"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    .line 640
    const-string v0, "network_type"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    .line 642
    const-string v0, "ulbandwidth"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->ulBandWidth:I

    .line 644
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 634
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 652
    .end local v6    # "backHaulThreshold":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    :cond_5
    if-eqz v10, :cond_7

    .line 653
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .end local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    goto/16 :goto_0

    .line 647
    .end local v9    # "count":I
    .end local v12    # "i":I
    :catch_0
    move-exception v11

    .line 648
    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception occured, Setting backHaulThresholdList to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 650
    const/4 v7, 0x0

    .line 652
    if-eqz v10, :cond_0

    .line 653
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 652
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v10, :cond_6

    .line 653
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 652
    .end local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v9    # "count":I
    .restart local v12    # "i":I
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    goto :goto_3

    .line 647
    .end local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    :catch_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    goto :goto_2

    .end local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    :cond_7
    move-object v7, v8

    .end local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    goto/16 :goto_0
.end method

.method public getNetworkIDInfo(ILjava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2279
    const-string v0, "HotspotDBHandler"

    const-string v1, "getNetworkIDInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    if-nez p2, :cond_1

    .line 2281
    const-string v0, "HotspotDBHandler"

    const-string v1, "getNetworkIDInfo: Check for one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 2283
    if-nez p2, :cond_1

    .line 2284
    const-string v0, "HotspotDBHandler"

    const-string v1, "getNetworkIDInfo: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    const/4 v11, 0x0

    .line 2328
    :cond_0
    :goto_0
    return-object v11

    .line 2288
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 2289
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 2292
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2294
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 2296
    .local v11, "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2298
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 2299
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getNetworkIDInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    if-eqz v7, :cond_3

    .line 2301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2303
    :cond_3
    const/4 v11, 0x0

    .line 2324
    .end local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    if-eqz v7, :cond_0

    .line 2325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2305
    .restart local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2306
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2307
    const/4 v10, 0x0

    .line 2308
    .local v10, "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2309
    .end local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .local v12, "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_5

    .line 2310
    :try_start_2
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    .end local v10    # "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;-><init>()V

    .line 2311
    .restart local v10    # "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    const-string v0, "server_network_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->networkID:Ljava/lang/String;

    .line 2313
    const-string v0, "ssid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->ssid:Ljava/lang/String;

    .line 2315
    const-string v0, "hessid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->hessid:Ljava/lang/String;

    .line 2317
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2318
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2309
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2320
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2324
    if-eqz v7, :cond_7

    .line 2325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    goto :goto_0

    .line 2321
    .end local v6    # "count":I
    .end local v9    # "i":I
    .end local v10    # "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    :catch_0
    move-exception v8

    .line 2322
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2324
    if-eqz v7, :cond_0

    .line 2325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2324
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    .line 2325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2324
    .end local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v6    # "count":I
    .restart local v9    # "i":I
    .restart local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    goto :goto_3

    .line 2321
    .end local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    goto :goto_2

    .end local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v10    # "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    .restart local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    :cond_7
    move-object v11, v12

    .end local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    goto/16 :goto_0
.end method

.method public getOtherHomePartner(ILjava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2332
    const-string v0, "HotspotDBHandler"

    const-string v1, "getOtherHomePartner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    if-nez p2, :cond_1

    .line 2334
    const-string v0, "HotspotDBHandler"

    const-string v1, "getOtherHomePartner: Check for one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 2336
    if-nez p2, :cond_1

    .line 2337
    const-string v0, "HotspotDBHandler"

    const-string v1, "getOtherHomePartner: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    const/4 v11, 0x0

    .line 2379
    :cond_0
    :goto_0
    return-object v11

    .line 2341
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 2342
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 2345
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2346
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 2348
    .local v11, "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2350
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 2351
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getOtherHomePartner: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    if-eqz v7, :cond_3

    .line 2353
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2355
    :cond_3
    const/4 v11, 0x0

    .line 2375
    .end local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    if-eqz v7, :cond_0

    .line 2376
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2357
    .restart local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2358
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2359
    const/4 v9, 0x0

    .line 2360
    .local v9, "homePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2361
    .end local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .local v12, "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_5

    .line 2362
    :try_start_2
    new-instance v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;

    .end local v9    # "homePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    invoke-direct {v9}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;-><init>()V

    .line 2363
    .restart local v9    # "homePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    const-string v0, "server_otherhome_network_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    .line 2365
    const-string v0, "fqdn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->fqdn:Ljava/lang/String;

    .line 2367
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2368
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2361
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2370
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2375
    if-eqz v7, :cond_7

    .line 2376
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    goto :goto_0

    .line 2371
    .end local v6    # "count":I
    .end local v9    # "homePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    .end local v10    # "i":I
    :catch_0
    move-exception v8

    .line 2372
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2373
    const/4 v11, 0x0

    .line 2375
    if-eqz v7, :cond_0

    .line 2376
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2375
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    .line 2376
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2375
    .end local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v6    # "count":I
    .restart local v10    # "i":I
    .restart local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    goto :goto_3

    .line 2371
    .end local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    goto :goto_2

    .end local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v9    # "homePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    .restart local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    :cond_7
    move-object v11, v12

    .end local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    goto/16 :goto_0
.end method

.method public getPPSMONode(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .locals 13
    .param p1, "credentialID"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2011
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPPSMONode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;-><init>()V

    .line 2013
    .local v10, "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v9

    .line 2014
    .local v9, "hotspotID":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 2015
    const-string v0, "HotspotDBHandler"

    const-string v1, "Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 2062
    .end local v10    # "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_0
    :goto_0
    return-object v10

    .line 2018
    .restart local v10    # "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 2019
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .line 2022
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2024
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2026
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 2027
    :cond_2
    if-eqz v7, :cond_3

    .line 2028
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2058
    :cond_3
    if-eqz v7, :cond_4

    .line 2059
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v10, v11

    goto :goto_0

    .line 2032
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2033
    .local v6, "count":I
    if-le v6, v12, :cond_7

    .line 2034
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2058
    if-eqz v7, :cond_6

    .line 2059
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v10, v11

    goto :goto_0

    .line 2037
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2038
    iput-object v9, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    .line 2039
    invoke-direct {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPpsMoID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    .line 2040
    invoke-direct {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUpdateIdentifier(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    .line 2041
    const-string v0, "subscription_priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    .line 2043
    const-string v0, "user_priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->userPriority:I

    .line 2045
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getAAATrustRoot(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    .line 2046
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    .line 2047
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    .line 2048
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    .line 2049
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionParameterInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    .line 2051
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getRemediationInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    .line 2053
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2058
    if-eqz v7, :cond_0

    .line 2059
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2055
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 2056
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2058
    if-eqz v7, :cond_0

    .line 2059
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2058
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    .line 2059
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public getPPSMONodeHotspotID(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .locals 13
    .param p1, "hotspotID"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2070
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPPSMONode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;-><init>()V

    .line 2072
    .local v10, "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-gez p1, :cond_1

    .line 2073
    const-string v0, "HotspotDBHandler"

    const-string v1, "Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 2119
    .end local v10    # "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_0
    :goto_0
    return-object v10

    .line 2076
    .restart local v10    # "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 2077
    .local v9, "hsId":Ljava/lang/String;
    const-string v3, "hotspot_id=?"

    .line 2078
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .line 2081
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2083
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2085
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 2086
    :cond_2
    if-eqz v7, :cond_3

    .line 2087
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2115
    :cond_3
    if-eqz v7, :cond_4

    .line 2116
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v10, v11

    goto :goto_0

    .line 2091
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2092
    .local v6, "count":I
    if-le v6, v12, :cond_7

    .line 2093
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2115
    if-eqz v7, :cond_6

    .line 2116
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v10, v11

    goto :goto_0

    .line 2096
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2097
    iput-object v9, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    .line 2098
    invoke-direct {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPpsMoID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    .line 2099
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUpdateIdentifier(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    .line 2100
    const-string v0, "subscription_priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    .line 2102
    const-string v0, "user_priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->userPriority:I

    .line 2104
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getAAATrustRoot(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    .line 2105
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    .line 2106
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    .line 2107
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    .line 2108
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionParameterInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    .line 2110
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getRemediationInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    .line 2111
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2115
    if-eqz v7, :cond_0

    .line 2116
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2112
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 2113
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2115
    if-eqz v7, :cond_0

    .line 2116
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2115
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    .line 2116
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    .locals 12
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 227
    new-instance v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    invoke-direct {v9}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;-><init>()V

    .line 228
    .local v9, "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    if-nez p2, :cond_0

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 230
    if-nez p2, :cond_0

    .line 231
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyInfo: SP Info doesnt exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 278
    :goto_0
    return-object v0

    .line 235
    :cond_0
    const-string v3, "hotspot_id=?"

    .line 236
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 239
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 241
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 242
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 243
    :cond_1
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-eqz v7, :cond_2

    .line 245
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_2
    if-eqz v7, :cond_3

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v10

    goto :goto_0

    .line 249
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 250
    .local v6, "count":I
    if-le v6, v11, :cond_7

    .line 251
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyInfo: More than 2 entries exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz v7, :cond_5

    .line 253
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :cond_5
    if-eqz v7, :cond_6

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v10

    goto :goto_0

    .line 257
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 258
    const-string v0, "maximumbss_load_value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->maximumBSSLoadValue:I

    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getMinBackHaulThresholdInfo(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPreferredRoamingPartnerInfo(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getProtoPortTupple(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSPExclusionList(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    if-eqz v7, :cond_8

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_8
    :goto_1
    move-object v0, v9

    .line 278
    goto :goto_0

    .line 269
    :catch_0
    move-exception v8

    .line 270
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyInfo: Exception Occured, Setting Policy to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    const/4 v9, 0x0

    .line 274
    if-eqz v7, :cond_8

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 274
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public getPolicyURI(I)Ljava/lang/String;
    .locals 13
    .param p1, "credenentialID"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 881
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v9

    .line 882
    .local v9, "hotspotID":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 883
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyURI: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 922
    :cond_0
    :goto_0
    return-object v10

    .line 886
    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .line 888
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    const-string v0, "0"

    aput-object v0, v4, v12

    .line 892
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 893
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 895
    .local v10, "policyURI":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 897
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 898
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyURI: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    if-eqz v7, :cond_3

    .line 900
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    :cond_3
    if-eqz v7, :cond_4

    .line 919
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v10, v11

    goto :goto_0

    .line 904
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 905
    .local v6, "count":I
    if-le v6, v12, :cond_7

    .line 906
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyURI: More than 1entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    if-eqz v7, :cond_6

    .line 919
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v10, v11

    goto :goto_0

    .line 910
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 911
    const-string v0, "uri"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 918
    if-eqz v7, :cond_0

    .line 919
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 913
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 914
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 915
    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception Occured, Setting policyURI to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 916
    const/4 v10, 0x0

    .line 918
    if-eqz v7, :cond_0

    .line 919
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 918
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    .line 919
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public getPolicyUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 335
    if-nez p2, :cond_1

    .line 336
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyUpdateInfo: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 338
    if-nez p2, :cond_1

    .line 339
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyUpdateInfo: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    .line 395
    :cond_0
    :goto_0
    return-object v9

    .line 343
    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .line 345
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const-string v0, "0"

    aput-object v0, v4, v12

    .line 348
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 349
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 351
    .local v9, "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 353
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 354
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyUpdateInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-eqz v7, :cond_3

    .line 356
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :cond_3
    if-eqz v7, :cond_4

    .line 392
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    .line 360
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 361
    .local v6, "count":I
    if-le v6, v12, :cond_8

    .line 362
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyUpdateInfo: More than 2 entries exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-eqz v7, :cond_6

    .line 364
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    :cond_6
    if-eqz v7, :cond_7

    .line 392
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v9, v11

    goto :goto_0

    .line 368
    :cond_8
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 369
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    .end local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .local v10, "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :try_start_3
    const-string v0, "other"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->other:Ljava/lang/String;

    .line 372
    const-string v0, "restriction"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->restriction:Ljava/lang/String;

    .line 374
    const-string v0, "update_interval"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateInterval:J

    .line 376
    const-string v0, "update_method"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    .line 378
    const-string v0, "uri"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->uri:Ljava/lang/String;

    .line 380
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;-><init>()V

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    .line 381
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    const-string v1, "username"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    .line 383
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    const-string v1, "password"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    .line 385
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getTrustRootInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 391
    if-eqz v7, :cond_a

    .line 392
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    goto/16 :goto_0

    .line 386
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 387
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 388
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyUpdateInfo: Exception occurred, Settings PolicyUpdate to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 389
    const/4 v9, 0x0

    .line 391
    if-eqz v7, :cond_0

    .line 392
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 391
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_9

    .line 392
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 391
    .end local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v6    # "count":I
    .restart local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    goto :goto_2

    .line 386
    .end local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    goto :goto_1

    .end local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :cond_a
    move-object v9, v10

    .end local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    goto/16 :goto_0
.end method

.method public getPreferredRoamingPartnerInfo(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    if-nez p2, :cond_1

    .line 542
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPreferredRoamingPartnerInfo: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 544
    if-nez p2, :cond_1

    .line 545
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPreferredRoamingPartnerInfo: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v11, 0x0

    .line 596
    :cond_0
    :goto_0
    return-object v11

    .line 549
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 550
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 553
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 554
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 556
    .local v11, "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 558
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 559
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPreferredRoamingPartnerInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    if-eqz v7, :cond_3

    .line 561
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :cond_3
    const/4 v11, 0x0

    .line 592
    .end local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    if-eqz v7, :cond_0

    .line 593
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 565
    .restart local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 566
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 567
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    .end local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .local v12, "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_5

    .line 570
    :try_start_2
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredRoamingPartnerInfo: count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;-><init>()V

    .line 572
    .local v10, "preferredRoamingPartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    const-string v0, "server_roaming_partner_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->roamingPartnerID:Ljava/lang/String;

    .line 574
    const-string v0, "country"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    .line 576
    const-string v0, "fqdn_match"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    .line 578
    const-string v0, "priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->priority:I

    .line 580
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredRoamingPartnerInfo: Country"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "preferredRoamingPartner.fQDNMatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredRoamingPartnerInfo: preferredRoamingPartner.priority"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 569
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 592
    .end local v10    # "preferredRoamingPartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    :cond_5
    if-eqz v7, :cond_7

    .line 593
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    goto/16 :goto_0

    .line 587
    .end local v6    # "count":I
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .line 588
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 589
    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception occurred, Setting preferredRoamingPartnerList to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 590
    const/4 v11, 0x0

    .line 592
    if-eqz v7, :cond_0

    .line 593
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 592
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    .line 593
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 592
    .end local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v6    # "count":I
    .restart local v9    # "i":I
    .restart local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    goto :goto_3

    .line 587
    .end local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    goto :goto_2

    .end local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    :cond_7
    move-object v11, v12

    .end local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    goto/16 :goto_0
.end method

.method public getProtoPortTupple(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    if-nez p2, :cond_1

    .line 485
    const-string v0, "HotspotDBHandler"

    const-string v1, "getProtoPortTupple: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 487
    if-nez p2, :cond_1

    .line 488
    const-string v0, "HotspotDBHandler"

    const-string v1, "getProtoPortTupple: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v11, 0x0

    .line 531
    :cond_0
    :goto_0
    return-object v11

    .line 492
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 493
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 496
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 497
    .local v11, "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    const/4 v7, 0x0

    .line 499
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 500
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 501
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getProtoPortTupple: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-eqz v7, :cond_3

    .line 503
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :cond_3
    const/4 v11, 0x0

    .line 527
    .end local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    if-eqz v7, :cond_0

    .line 528
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 507
    .restart local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 508
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 509
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    .end local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .local v12, "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_5

    .line 512
    :try_start_2
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;-><init>()V

    .line 513
    .local v10, "protoPortTupple":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    const-string v0, "server_tupple_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->protoPortTuppleID:Ljava/lang/String;

    .line 515
    const-string v0, "ip_protocol"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->ipProtocol:I

    .line 517
    const-string v0, "port_number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->portNumber:I

    .line 519
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 511
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 527
    .end local v10    # "protoPortTupple":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    :cond_5
    if-eqz v7, :cond_7

    .line 528
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    goto :goto_0

    .line 522
    .end local v6    # "count":I
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .line 523
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 524
    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception occurred, Setting protoPortTuppleList to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 525
    const/4 v11, 0x0

    .line 527
    if-eqz v7, :cond_0

    .line 528
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 527
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    .line 528
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 527
    .end local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v6    # "count":I
    .restart local v9    # "i":I
    .restart local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    goto :goto_3

    .line 522
    .end local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    goto :goto_2

    .end local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    :cond_7
    move-object v11, v12

    .end local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    goto/16 :goto_0
.end method

.method public getRemediationInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2447
    const-string v0, "HotspotDBHandler"

    const-string v1, "getRemediationInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    if-nez p2, :cond_1

    .line 2449
    const-string v0, "HotspotDBHandler"

    const-string v1, "Check one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 2451
    if-nez p2, :cond_1

    .line 2452
    const-string v0, "HotspotDBHandler"

    const-string v1, "Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    .line 2492
    :cond_0
    :goto_0
    return-object v9

    .line 2456
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 2457
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 2460
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2461
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2463
    .local v9, "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2465
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 2466
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getRemediationInfo: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    if-eqz v7, :cond_3

    .line 2469
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2488
    :cond_3
    if-eqz v7, :cond_4

    .line 2489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    .line 2473
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2474
    .local v6, "count":I
    if-le v6, v12, :cond_7

    .line 2475
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2488
    if-eqz v7, :cond_6

    .line 2489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v11

    goto :goto_0

    .line 2478
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2479
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2480
    .end local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .local v10, "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    :try_start_3
    const-string v0, "uri"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->URI:Ljava/lang/String;

    .line 2482
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getTrustRootInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    .line 2483
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2488
    if-eqz v7, :cond_9

    .line 2489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    goto :goto_0

    .line 2484
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 2485
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2486
    const/4 v9, 0x0

    .line 2488
    if-eqz v7, :cond_0

    .line 2489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2488
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_8

    .line 2489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 2488
    .end local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v6    # "count":I
    .restart local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    goto :goto_2

    .line 2484
    .end local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    goto :goto_1

    .end local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    :cond_9
    move-object v9, v10

    .end local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    goto :goto_0
.end method

.method public getSIMInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;
    .locals 2
    .param p1, "dbCur"    # Landroid/database/Cursor;

    .prologue
    .line 816
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;-><init>()V

    .line 817
    .local v0, "sim":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;
    const-string v1, "sim_eaptype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    .line 818
    const-string v1, "imsi"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    .line 819
    return-object v0
.end method

.method public getSpIcon(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .locals 14
    .param p1, "hsId"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1952
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1953
    .local v9, "hotspotId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1954
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1956
    .local v10, "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :try_start_0
    const-string v3, "hotspot_id=?"

    .line 1957
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .line 1960
    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1961
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1962
    :cond_0
    if-eqz v7, :cond_1

    .line 1963
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1985
    :cond_1
    if-eqz v7, :cond_2

    .line 1986
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v12

    .line 1989
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1967
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectArgs":[Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1968
    .local v6, "count":I
    if-le v6, v13, :cond_6

    .line 1969
    if-eqz v7, :cond_4

    .line 1970
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1985
    :cond_4
    if-eqz v7, :cond_5

    .line 1986
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v12

    goto :goto_0

    .line 1974
    :cond_6
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1975
    new-instance v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;

    invoke-direct {v11}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1976
    .end local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .local v11, "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :try_start_3
    const-string v0, "sp_icon_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->name:Ljava/lang/String;

    .line 1978
    const-string v0, "sp_icon_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->type:Ljava/lang/String;

    .line 1980
    const-string v0, "sp_icon_hash"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->hash:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1985
    if-eqz v7, :cond_9

    .line 1986
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v10, v11

    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v6    # "count":I
    .end local v11    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :cond_7
    :goto_1
    move-object v0, v10

    .line 1989
    goto :goto_0

    .line 1982
    :catch_0
    move-exception v8

    .line 1983
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1985
    if-eqz v7, :cond_7

    .line 1986
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1985
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_8

    .line 1986
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 1985
    .end local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectArgs":[Ljava/lang/String;
    .restart local v6    # "count":I
    .restart local v11    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    goto :goto_3

    .line 1982
    .end local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v11    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :catch_1
    move-exception v8

    move-object v10, v11

    .end local v11    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    goto :goto_2

    .end local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v11    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :cond_9
    move-object v10, v11

    .end local v11    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    goto :goto_1
.end method

.method public getSpIconList()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2724
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSpIconList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    const/4 v7, 0x0

    .line 2726
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 2728
    .local v11, "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2730
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2731
    :cond_0
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSpIconList: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    if-eqz v7, :cond_1

    .line 2733
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2735
    :cond_1
    const/4 v0, 0x0

    .line 2755
    if-eqz v7, :cond_2

    .line 2756
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2759
    :cond_2
    :goto_0
    return-object v0

    .line 2737
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2738
    .local v6, "count":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2739
    .end local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2740
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_4

    .line 2741
    const-string v0, "sp_icon_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2743
    .local v13, "name":Ljava/lang/String;
    const-string v0, "sp_icon_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2745
    .local v14, "type":Ljava/lang/String;
    const-string v0, "sp_icon_hash"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2747
    .local v9, "hash":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2748
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2740
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2750
    .end local v9    # "hash":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "type":Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2755
    if-eqz v7, :cond_7

    .line 2756
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v6    # "count":I
    .end local v10    # "i":I
    .end local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    move-object v0, v11

    .line 2759
    goto :goto_0

    .line 2751
    :catch_0
    move-exception v8

    .line 2752
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2753
    const/4 v11, 0x0

    .line 2755
    if-eqz v7, :cond_5

    .line 2756
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2755
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_6

    .line 2756
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2755
    .end local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "count":I
    .restart local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 2751
    .end local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .end local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "i":I
    .restart local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    move-object v11, v12

    .end local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public getSubscriptionParameterInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 154
    if-nez p2, :cond_1

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 156
    if-nez p2, :cond_1

    .line 157
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSubscriptionParameterInfo: SP Info doesnt exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    .line 200
    :cond_0
    :goto_0
    return-object v9

    .line 161
    :cond_1
    const-string v3, ""

    .line 162
    .local v3, "selection":Ljava/lang/String;
    const-string v3, "hotspot_id=?"

    .line 163
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 166
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 167
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 169
    .local v9, "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 170
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 171
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSubscriptionParameterInfo: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-eqz v7, :cond_3

    .line 173
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_3
    if-eqz v7, :cond_4

    .line 197
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    .line 177
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 178
    .local v6, "count":I
    if-le v6, v12, :cond_7

    .line 179
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSubscriptionParameterInfo: More than 2 entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    if-eqz v7, :cond_6

    .line 197
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v11

    goto :goto_0

    .line 183
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 184
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    .end local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .local v10, "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    :try_start_3
    const-string v0, "creation_date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->creationDate:Ljava/lang/String;

    .line 187
    const-string v0, "expiration_date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->expirationDate:Ljava/lang/String;

    .line 189
    const-string v0, "type_of_subscription"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->typeOfSubscription:Ljava/lang/String;

    .line 191
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUsageLimitInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 196
    if-eqz v7, :cond_9

    .line 197
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    goto :goto_0

    .line 192
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 193
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 194
    const/4 v9, 0x0

    .line 196
    if-eqz v7, :cond_0

    .line 197
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 196
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_8

    .line 197
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 196
    .end local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v6    # "count":I
    .restart local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    goto :goto_2

    .line 192
    .end local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    goto :goto_1

    .end local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    :cond_9
    move-object v9, v10

    .end local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    goto/16 :goto_0
.end method

.method public getSubscriptionUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 404
    if-nez p2, :cond_1

    .line 405
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSubscriptionUpdateInfo: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 407
    if-nez p2, :cond_1

    .line 408
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSubscriptionUpdateInfo: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    .line 462
    :cond_0
    :goto_0
    return-object v9

    .line 412
    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .line 414
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const-string v0, "1"

    aput-object v0, v4, v12

    .line 417
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 418
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 420
    .local v9, "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 422
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 423
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSubscriptionUpdateInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-eqz v7, :cond_3

    .line 425
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :cond_3
    if-eqz v7, :cond_4

    .line 459
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    .line 429
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 430
    .local v6, "count":I
    if-le v6, v12, :cond_7

    .line 431
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSubscriptionUpdateInfo: More than 2 entries exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    if-eqz v7, :cond_6

    .line 459
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v11

    goto :goto_0

    .line 435
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 436
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    .end local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .local v10, "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :try_start_3
    const-string v0, "other"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->other:Ljava/lang/String;

    .line 439
    const-string v0, "restriction"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->restriction:Ljava/lang/String;

    .line 441
    const-string v0, "update_interval"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateInterval:J

    .line 443
    const-string v0, "update_method"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    .line 445
    const-string v0, "uri"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->uri:Ljava/lang/String;

    .line 447
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;-><init>()V

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    .line 448
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    const-string v1, "username"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    .line 450
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    const-string v1, "password"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    .line 452
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getTrustRootInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 458
    if-eqz v7, :cond_9

    .line 459
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    goto/16 :goto_0

    .line 453
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 454
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 455
    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception Occurred, Setting subscriptionUpdate to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 456
    const/4 v9, 0x0

    .line 458
    if-eqz v7, :cond_0

    .line 459
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 458
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_8

    .line 459
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 458
    .end local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v6    # "count":I
    .restart local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    goto :goto_2

    .line 453
    .end local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    goto :goto_1

    .end local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :cond_9
    move-object v9, v10

    .end local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    goto/16 :goto_0
.end method

.method public getTrustRootInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;
    .locals 2
    .param p1, "dbCur"    # Landroid/database/Cursor;

    .prologue
    .line 469
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;-><init>()V

    .line 470
    .local v0, "trustroot":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;
    const-string v1, "certurl"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    .line 472
    const-string v1, "cert_sha256_finger_print"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    .line 475
    return-object v0
.end method

.method public getUpdateIdentifier(I)I
    .locals 13
    .param p1, "credentialID"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    .line 2650
    const-string v0, "HotspotDBHandler"

    const-string v1, "getUpdateIdentifier"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v9

    .line 2652
    .local v9, "hotspotID":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 2653
    const-string v0, "HotspotDBHandler"

    const-string v1, "getUpdateIdentifier: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 2692
    :cond_0
    :goto_0
    return v10

    .line 2656
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 2657
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .line 2660
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2661
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v10, -0x1

    .line 2663
    .local v10, "updateIdentifier":I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2665
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 2666
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getUpdateIdentifier: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    if-eqz v7, :cond_3

    .line 2669
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2688
    :cond_3
    if-eqz v7, :cond_4

    .line 2689
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v10, v11

    goto :goto_0

    .line 2673
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2674
    .local v6, "count":I
    if-le v6, v12, :cond_8

    .line 2675
    if-eqz v7, :cond_6

    .line 2676
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2688
    :cond_6
    if-eqz v7, :cond_7

    .line 2689
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move v10, v11

    goto :goto_0

    .line 2680
    :cond_8
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2681
    const-string v0, "update_identifier"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2683
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getupdateIdentifier: ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2688
    if-eqz v7, :cond_0

    .line 2689
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2685
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 2686
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2688
    if-eqz v7, :cond_0

    .line 2689
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2688
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    .line 2689
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public getUpdateIdentifierForFqdn(Ljava/lang/String;)I
    .locals 10
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    .line 2696
    const-string v0, "HotspotDBHandler"

    const-string v1, "getUpdateIdentifier"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    const-string v3, "fqdn=?"

    .line 2698
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 2702
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2704
    .local v7, "cr":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2706
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2707
    .local v6, "count":I
    if-nez v6, :cond_0

    .line 2708
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2720
    .end local v6    # "count":I
    :goto_0
    return v9

    .line 2712
    .restart local v6    # "count":I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2713
    const-string v0, "update_identifier"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2719
    .local v9, "updateIdentifier":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2716
    .end local v6    # "count":I
    .end local v9    # "updateIdentifier":I
    :catch_0
    move-exception v8

    .line 2717
    .local v8, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getUsageLimitInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;
    .locals 2
    .param p1, "dbCur"    # Landroid/database/Cursor;

    .prologue
    .line 209
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;-><init>()V

    .line 210
    .local v0, "usageLimit":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;
    const-string v1, "date_limit"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->dataLimit:I

    .line 212
    const-string v1, "start_date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->startDate:Ljava/lang/String;

    .line 214
    const-string v1, "time_limit"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->timeLimit:I

    .line 216
    const-string v1, "usage_interval"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->usageInterval:I

    .line 218
    return-object v0
.end method

.method public getUserPriority()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2918
    const-string v0, "HotspotDBHandler"

    const-string v1, "getUserPriority"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    const/4 v6, 0x0

    .line 2920
    .local v6, "dbCur":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 2921
    .local v8, "userPriority":I
    new-array v2, v9, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "MAX(user_priority)"

    aput-object v1, v2, v0

    .line 2924
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2925
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2926
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2927
    const-string v0, "user_priority"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 2932
    :cond_0
    if-eqz v6, :cond_1

    .line 2933
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2936
    :cond_1
    :goto_0
    return v8

    .line 2929
    :catch_0
    move-exception v7

    .line 2930
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "HotspotDBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserPriority: Exception occured:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2932
    if-eqz v6, :cond_1

    .line 2933
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2932
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2933
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getUsernamePasswordInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;
    .locals 4
    .param p1, "dbCur"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 843
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;-><init>()V

    .line 844
    .local v0, "usernamePasswpord":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;
    const-string v1, "abletoshare"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->ableToShare:Z

    .line 846
    const-string v1, "machine_managed"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    :goto_1
    iput-boolean v2, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->machineManaged:Z

    .line 848
    const-string v1, "password"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    .line 850
    const-string v1, "soft_tokenapp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->softTokenApp:Ljava/lang/String;

    .line 852
    const-string v1, "username"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    .line 854
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getEAPInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    .line 855
    return-object v0

    :cond_0
    move v1, v3

    .line 844
    goto :goto_0

    :cond_1
    move v2, v3

    .line 846
    goto :goto_1
.end method

.method public getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .locals 11
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    .line 742
    if-nez p2, :cond_1

    .line 743
    const-string v0, "HotspotDBHandler"

    const-string v1, "getcredentialInfo: Check for one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 745
    if-nez p2, :cond_1

    .line 746
    const-string v0, "HotspotDBHandler"

    const-string v1, "getcredentialInfo: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v7, 0x0

    .line 809
    :cond_0
    :goto_0
    return-object v7

    .line 750
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 751
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 754
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 755
    .local v9, "dbCur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 757
    .local v7, "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 759
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 760
    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getcredentialInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    if-eqz v9, :cond_3

    .line 762
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    :cond_3
    const/4 v7, 0x0

    .line 805
    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    if-eqz v9, :cond_0

    .line 806
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 766
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :cond_4
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 767
    .local v6, "count":I
    const/4 v0, 0x1

    if-le v6, v0, :cond_5

    .line 768
    const-string v0, "HotspotDBHandler"

    const-string v1, "getcredentialInfo: More than 2 entries exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 770
    const/4 v7, 0x0

    .line 805
    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    if-eqz v9, :cond_0

    .line 806
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 772
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :cond_5
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 773
    new-instance v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    invoke-direct {v8}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 774
    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .local v8, "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :try_start_3
    const-string v0, "creation_date"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    .line 776
    const-string v0, "expiration_date"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    .line 779
    const-string v0, "realm"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    .line 781
    const-string v0, "check_aaa_server_cert_status"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->checkAAAServerCertStatus:Z

    .line 784
    const-string v0, "credential_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    .line 786
    const-string v0, "hs20_aaa_ca_cert_hash"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->hs20AAAFP:Ljava/lang/String;

    .line 790
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUsernamePasswordInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    .line 792
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getDigitalCertificateInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    .line 794
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSIMInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    .line 795
    const-string v0, "method_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->methodType:I

    .line 797
    const-string v0, "credential_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialID:I

    .line 799
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getEAPInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 805
    if-eqz v9, :cond_8

    .line 806
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .end local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    goto/16 :goto_0

    .line 781
    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 800
    .end local v6    # "count":I
    .end local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :catch_0
    move-exception v10

    .line 801
    .local v10, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 802
    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception occurred, Setting credentialInfo to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 803
    const/4 v7, 0x0

    .line 805
    if-eqz v9, :cond_0

    .line 806
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 805
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_7

    .line 806
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 805
    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v6    # "count":I
    .restart local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    goto :goto_3

    .line 800
    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :catch_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    goto :goto_2

    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :cond_8
    move-object v7, v8

    .end local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    goto/16 :goto_0
.end method

.method public setCertID(I)Z
    .locals 11
    .param p1, "certID"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 965
    const-string v8, "HotspotDBHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setCertID:certID"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v4, -0x1

    .line 967
    .local v4, "tempCredentialID":I
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 969
    const-string v7, "HotspotDBHandler"

    const-string v8, "setCertID: Entry doesn\'t exists"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :goto_0
    return v6

    .line 972
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 973
    .local v5, "values":Landroid/content/ContentValues;
    const-string v8, "cert_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 974
    const-string v2, "hotspot_id=?"

    .line 975
    .local v2, "selection":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v6

    .line 978
    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v8, v5, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 980
    .local v3, "status":I
    if-ne v3, v7, :cond_1

    .line 981
    const-string v6, "HotspotDBHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCertID: Updation of credential info successful.status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 982
    goto :goto_0

    .line 984
    :cond_1
    const-string v6, "HotspotDBHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCertID: Failed to update the credential info. Status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 985
    goto :goto_0
.end method

.method public setCredDetails(Lcom/android/server/wifi/hs20/WifiHs20CredDetails;)Z
    .locals 11
    .param p1, "credDetails"    # Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2783
    const-string v8, "HotspotDBHandler"

    const-string v9, "setCredDetails"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    iget v4, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->credID:I

    .line 2785
    .local v4, "tempCredentialID":I
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .line 2786
    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2787
    const-string v7, "HotspotDBHandler"

    const-string v8, "setCredDetails: Entry doesn\'t exists"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    :cond_0
    :goto_0
    return v6

    .line 2790
    :cond_1
    const-string v8, "HotspotDBHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setCredDetails: + cert ID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->certID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "cred ID"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->credID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2793
    .local v5, "values":Landroid/content/ContentValues;
    const-string v8, "cert_id"

    iget v9, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->certID:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2794
    const-string v8, "private_key_hash"

    iget-object v9, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->privateKeyHash:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    const-string v8, "client_cert_hash"

    iget-object v9, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->clientCertHash:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    const-string v2, "hotspot_id=?"

    .line 2797
    .local v2, "selection":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v6

    .line 2800
    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v5, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2802
    .local v3, "status":I
    if-ne v3, v7, :cond_0

    move v6, v7

    .line 2803
    goto :goto_0
.end method

.method public setCredId(II)Z
    .locals 9
    .param p1, "hotSpotId"    # I
    .param p2, "credID"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 990
    const-string v6, "HotspotDBHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCredId:hotSpotId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "credID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/4 v6, -0x1

    if-ge p1, v6, :cond_0

    .line 992
    const-string v5, "HotspotDBHandler"

    const-string v6, "setCertID: Entry doesn\'t exists"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :goto_0
    return v4

    .line 995
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 996
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "credential_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 997
    const-string v1, "hotspot_id=?"

    .line 998
    .local v1, "selection":Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    .line 1001
    .local v0, "selectArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6, v3, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1003
    .local v2, "status":I
    if-ne v2, v5, :cond_1

    .line 1004
    const-string v4, "HotspotDBHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCertID: Updation of credential info successful.status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1005
    goto :goto_0

    .line 1007
    :cond_1
    const-string v4, "HotspotDBHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCertID: Failed to update the credential info. Status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1008
    goto :goto_0
.end method

.method public setCredentials(IIII)Z
    .locals 10
    .param p1, "credentialType"    # I
    .param p2, "credentialID"    # I
    .param p3, "methodType"    # I
    .param p4, "old_cred_id"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 935
    const-string v7, "HotspotDBHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCredentials:credentialType"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "credentialID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "methodType"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "old_cred_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-virtual {p0, p4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 939
    const-string v6, "HotspotDBHandler"

    const-string v7, "setCredentials: Entry doesn\'t exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :goto_0
    return v5

    .line 942
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 943
    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "credential_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 944
    const-string v7, "credential_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 945
    const-string v7, "method_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 946
    const-string v2, "hotspot_id=?"

    .line 947
    .local v2, "selection":Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v5

    .line 950
    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7, v4, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 952
    .local v3, "status":I
    if-ne v3, v6, :cond_1

    .line 953
    const-string v5, "HotspotDBHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCredentials: Updation of credential info successful.status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 954
    goto :goto_0

    .line 956
    :cond_1
    const-string v5, "HotspotDBHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCredentials: Failed to update the credential info. Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 957
    goto :goto_0
.end method

.method public setEAPType(II)Z
    .locals 9
    .param p1, "credID"    # I
    .param p2, "eapType"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1013
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1015
    const-string v6, "HotspotDBHandler"

    const-string v7, "setEAPType: Entry doesn\'t exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :goto_0
    return v5

    .line 1018
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1019
    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "eap_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1020
    const-string v2, "hotspot_id=?"

    .line 1021
    .local v2, "selection":Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v5

    .line 1024
    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7, v4, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1026
    .local v3, "status":I
    if-ne v3, v6, :cond_1

    .line 1027
    const-string v5, "HotspotDBHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setEAPType: Updation of credential info successful.status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1028
    goto :goto_0

    .line 1030
    :cond_1
    const-string v5, "HotspotDBHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setEAPType: Failed to update the credential info. Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1031
    goto :goto_0
.end method

.method public setSpIcon(ILcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;)Z
    .locals 6
    .param p1, "credId"    # I
    .param p2, "icon"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;

    .prologue
    .line 1936
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .line 1937
    .local v0, "hotspotId":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1938
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "hotspot_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    const-string v3, "sp_icon_name"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    const-string v3, "sp_icon_type"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    const-string v3, "sp_icon_hash"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->hash:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1943
    .local v1, "newUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 1944
    const-string v3, "HotspotDBHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    const/4 v3, 0x1

    .line 1947
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setTrustRootFP(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "certSHA256FP"    # Ljava/lang/String;
    .param p2, "credID"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2763
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .line 2764
    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2765
    const-string v6, "HotspotDBHandler"

    const-string v7, "setTrustRootFP: Entry doesn\'t exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    :cond_0
    :goto_0
    return v5

    .line 2768
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2769
    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "hs20_aaa_ca_cert_hash"

    invoke-virtual {v4, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    const-string v2, "hotspot_id=?"

    .line 2771
    .local v2, "selection":Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v5

    .line 2774
    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v4, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2776
    .local v3, "status":I
    if-ne v3, v6, :cond_0

    move v5, v6

    .line 2777
    goto :goto_0
.end method

.method public setUpdateIdentifier(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "updateIdentier"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 2609
    const-string v1, "HotspotDBHandler"

    const-string v2, "setUpdateIdentifier"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    const-string v3, "fqdn=?"

    .line 2611
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v11

    .line 2614
    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2615
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 2617
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2619
    if-nez v7, :cond_1

    .line 2620
    const-string v1, "HotspotDBHandler"

    const-string v2, "setUpdateIdentifier: Database doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2642
    if-eqz v7, :cond_0

    .line 2643
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v1, v11

    .line 2646
    :goto_0
    return v1

    .line 2623
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2624
    .local v6, "count":I
    if-lt v6, v12, :cond_2

    .line 2625
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2626
    .local v10, "values":Landroid/content/ContentValues;
    const-string v1, "update_identifier"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2628
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2629
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_3

    .line 2630
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2633
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2629
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2636
    .end local v9    # "i":I
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_2
    const-string v1, "HotspotDBHandler"

    const-string v2, "setUpdateIdentifier: Entry doesnt exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2642
    if-eqz v7, :cond_4

    .line 2643
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_4
    :goto_2
    move v1, v12

    .line 2646
    goto :goto_0

    .line 2639
    :catch_0
    move-exception v8

    .line 2640
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2642
    if-eqz v7, :cond_4

    .line 2643
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2642
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 2643
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public setUserPriority(II)Z
    .locals 11
    .param p1, "credID"    # I
    .param p2, "userPriority"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2810
    const-string v8, "HotspotDBHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setUserPriority credid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " userPriority:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    move v4, p1

    .line 2812
    .local v4, "tempCredentialID":I
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .line 2813
    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2814
    const-string v7, "HotspotDBHandler"

    const-string v8, "setUserPriority: Entry doesn\'t exists"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    :cond_0
    :goto_0
    return v6

    .line 2817
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2818
    .local v5, "values":Landroid/content/ContentValues;
    const-string v8, "user_priority"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2819
    const-string v2, "hotspot_id=?"

    .line 2820
    .local v2, "selection":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v6

    .line 2823
    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v5, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2824
    .local v3, "status":I
    if-ne v3, v7, :cond_0

    move v6, v7

    .line 2825
    goto :goto_0
.end method

.method public setUserPriority(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "hotspotID"    # Ljava/lang/String;
    .param p2, "userPriority"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2832
    const-string v6, "HotspotDBHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setUserPriority hotspotID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " userPriority:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    if-nez p1, :cond_1

    .line 2834
    const-string v5, "HotspotDBHandler"

    const-string v6, "setUserPriority: Entry doesn\'t exists"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    :cond_0
    :goto_0
    return v4

    .line 2837
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2838
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "user_priority"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2839
    const-string v1, "hotspot_id=?"

    .line 2840
    .local v1, "selection":Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v4

    .line 2843
    .local v0, "selectArgs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v3, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 2844
    .local v2, "status":I
    if-ne v2, v5, :cond_0

    move v4, v5

    .line 2845
    goto :goto_0
.end method
