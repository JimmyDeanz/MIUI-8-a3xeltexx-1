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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->DEFAULT_LENGTH:I

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->UPDATE_SUCCESS:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->HS20_DB_ADD_OPERATION:I

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->HS20_DB_UPDATE_OPERATION:I

    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

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

    const-string v0, "HotspotDBHandler"

    const-string v5, "addCredential"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "hotspot_id"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "creation_date"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "expiration_date"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "realm"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->hs20AAAFP:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "hs20_aaa_ca_cert_hash"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->hs20AAAFP:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v0, "credential_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    if-eqz v0, :cond_2

    const-string v0, "eap_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    if-eqz v0, :cond_3

    const-string v0, "username"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "password"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "machine_managed"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-boolean v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->machineManaged:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "soft_tokenapp"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->softTokenApp:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "abletoshare"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-boolean v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->ableToShare:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    if-eqz v0, :cond_3

    const-string v0, "inner_eaptype"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerEAPType:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "inner_method"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "inner_vendor_id"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "inner_vendor_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "vendor_id"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "vendor_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "eap_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    if-eqz v0, :cond_4

    const-string v0, "certificate_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certificateType:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cert_sha256_finger_print"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cert_id"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "private_key_hash"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->privateKeyHash:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client_cert_hash"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->clientcertHash:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    if-eqz v0, :cond_5

    const-string v0, "sim_eaptype"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imsi"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v0, v4, v2

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-nez v6, :cond_8

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

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

    .end local v9    # "newUri":Landroid/net/Uri;
    :goto_1
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_6
    :goto_2
    return-void

    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    :cond_7
    move v0, v2

    goto/16 :goto_0

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

    .end local v6    # "count":I
    .end local v10    # "ret":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

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
    const-string v0, "HotspotDBHandler"

    const-string v1, "Adding HomeOI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .local v13, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    if-eqz v0, :cond_3

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

    .local v9, "homeOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "server_homeoilist_id"

    iget-object v1, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "homeoi"

    iget-object v1, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOI:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "homeoirequired"

    iget-boolean v1, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOIRequired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "hotspot_id=? AND server_homeoilist_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    aput-object v1, v4, v0

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

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

    .end local v11    # "newUri":Landroid/net/Uri;
    :goto_1
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .restart local v6    # "count":I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

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

    .end local v6    # "count":I
    .end local v12    # "ret":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

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

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToFQDN(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HotspotDBHandler"

    const-string v3, "addMO: Failed to add the PPSMO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToHotspot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HotspotDBHandler"

    const-string v3, "addMO: Failed to add the PPSMO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addtoPreferredRoamingPartner(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToMinBackHaulThreshold(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToSPExclusionList(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToRequiredProtoPortTupple(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToPolicyUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    :cond_3
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToAAAServerTrustRoot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    :cond_4
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToSubscriptionUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    :cond_5
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addNetworkID(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addOtherHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    :goto_1
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addCredential(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x32

    goto :goto_0

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
    const-string v0, "HotspotDBHandler"

    const-string v1, "Adding Network ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .local v13, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    if-eqz v0, :cond_3

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

    .local v10, "networkID":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "server_network_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->networkID:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ssid"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->ssid:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hessid"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->hessid:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "hotspot_id=? AND server_network_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->networkID:Ljava/lang/String;

    aput-object v1, v4, v0

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

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

    .end local v11    # "newUri":Landroid/net/Uri;
    :goto_1
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .restart local v6    # "count":I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

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

    .end local v6    # "count":I
    .end local v12    # "ret":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

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
    const-string v0, "HotspotDBHandler"

    const-string v1, "Adding Other HomeOi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .local v11, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    if-eqz v0, :cond_3

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

    .local v10, "otherHomePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "server_otherhome_network_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fqdn"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->fqdn:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "hotspot_id=? AND server_otherhome_network_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    aput-object v1, v4, v0

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

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

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

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
    const-string v0, "HotspotDBHandler"

    const-string v1, "Adding AAA Trustroot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .local v12, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

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

    .local v6, "aaaServerTrustRoot":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "server_trustroot_id"

    iget-object v1, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootID:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "certurl"

    iget-object v1, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cert_sha256_finger_print"

    iget-object v1, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "hotspot_id=? AND server_trustroot_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootID:Ljava/lang/String;

    aput-object v1, v4, v0

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .local v7, "count":I
    if-nez v7, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

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

    .end local v11    # "newUri":Landroid/net/Uri;
    :goto_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v7    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

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

    .end local v7    # "count":I
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

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
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .local v11, "values":Landroid/content/ContentValues;
    if-nez p2, :cond_2

    const-string v0, "fqdn"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ppsmo_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

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

    iget v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    if-lez v0, :cond_0

    const-string v0, "update_identifier"

    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_1

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

    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .end local v10    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .restart local v10    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .end local v10    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v3, "fqdn=? AND ppsmo_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    aput-object v1, v4, v0

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

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

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-eqz v6, :cond_3

    const/4 v0, 0x1

    if-le v6, v0, :cond_4

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

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    iget v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    if-lez v0, :cond_5

    const-string v0, "update_identifier"

    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

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

    .end local v9    # "ret":I
    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

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

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .local v2, "values":Landroid/content/ContentValues;
    if-nez p2, :cond_0

    const-string v3, "hotspot_id"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "subscription_priority"

    iget v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    if-eqz v3, :cond_1

    const-string v3, "uri"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->URI:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    if-eqz v3, :cond_1

    const-string v3, "certurl"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cert_sha256_finger_print"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    if-eqz v3, :cond_2

    const-string v3, "creation_date"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->creationDate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "expiration_date"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->expirationDate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type_of_subscription"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->typeOfSubscription:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    if-eqz v3, :cond_2

    const-string v3, "start_date"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->startDate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "date_limit"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->dataLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "time_limit"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->timeLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "usage_interval"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->usageInterval:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    if-eqz v3, :cond_3

    const-string v3, "fqdn"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "friendly_name"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "icon_url"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "roamingconsortiumoi"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->HS20_DB_ADD_OPERATION:I

    if-ne p2, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_4
    :goto_0
    return v5

    :cond_5
    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->HS20_DB_UPDATE_OPERATION:I

    if-ne p2, v3, :cond_4

    const-string v0, "hotspot_id=?"

    .local v0, "selection":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v4, v1, v3

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
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .local v11, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

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

    .local v10, "minBackHaulThreshold":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "server_backhaul_threshold_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->minBackHaulThresholdID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dlbandwidh"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "network_type"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ulbandwidth"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->ulBandWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "hotspot_id=? AND server_backhaul_threshold_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->minBackHaulThresholdID:Ljava/lang/String;

    aput-object v1, v4, v0

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "backHaulCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .local v7, "count":I
    if-nez v7, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

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

    .end local v7    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

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

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .local v9, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    if-eqz v0, :cond_3

    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type_of_node"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "other"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->other:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "restriction"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->restriction:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "update_interval"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-wide v10, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateInterval:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "update_method"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uri"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->uri:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    if-eqz v0, :cond_0

    const-string v0, "username"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "password"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    if-eqz v0, :cond_1

    const-string v0, "certurl"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cert_sha256_finger_print"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    const-string v1, "0"

    aput-object v1, v4, v0

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-nez v6, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_2
    :goto_1
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    :cond_3
    return-void

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

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

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
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .local v11, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

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

    .local v10, "protoPortTupple":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "server_tupple_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->protoPortTuppleID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ip_protocol"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->ipProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "port_number"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->portNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "hotspot_id=? AND server_tupple_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->protoPortTuppleID:Ljava/lang/String;

    aput-object v1, v4, v0

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

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

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

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
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .local v12, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

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

    .local v11, "spexclusion":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "server_spexclusion_id"

    iget-object v1, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->id:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ssid"

    iget-object v1, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->ssid:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "hotspot_id=? AND server_spexclusion_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->id:Ljava/lang/String;

    aput-object v1, v4, v0

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

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

    .end local v10    # "newUri":Landroid/net/Uri;
    :goto_1
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

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

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

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

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type_of_node"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "other"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->other:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "restriction"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->restriction:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "update_interval"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-wide v12, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateInterval:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "update_method"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uri"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->uri:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    if-eqz v0, :cond_0

    const-string v0, "username"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "password"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    if-eqz v0, :cond_1

    const-string v0, "certurl"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cert_sha256_finger_print"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const-string v0, "1"

    aput-object v0, v4, v2

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-nez v6, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

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

    .end local v9    # "newUri":Landroid/net/Uri;
    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_2
    :goto_1
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    return-void

    .restart local v6    # "count":I
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

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

    .end local v6    # "count":I
    .end local v10    # "ret":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

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
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .local v11, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

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

    .local v10, "preferredroamin":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "country"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fqdn_match"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "priority"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "server_roaming_partner_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->roamingPartnerID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "hotspot_id=? AND server_roaming_partner_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->roamingPartnerID:Ljava/lang/String;

    aput-object v1, v4, v0

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "prefCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_0
    :goto_2
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

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

    .end local v6    # "count":I
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

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

    const-string v0, "HotspotDBHandler"

    const-string v1, "getPpsMoID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

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

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-eqz v6, :cond_0

    if-le v6, v10, :cond_2

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

    const/4 v9, 0x0

    .local v9, "ppsMoID":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_1
    :goto_1
    return-object v9

    .end local v9    # "ppsMoID":Ljava/lang/String;
    .restart local v6    # "count":I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

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

    .end local v6    # "count":I
    .end local v9    # "ppsMoID":Ljava/lang/String;
    :catch_0
    move-exception v8

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

    const/4 v9, 0x0

    .restart local v9    # "ppsMoID":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "ppsMoID":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

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
    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getSPExclusionList: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getSPExclusionList: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .local v11, "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSPExclusionList: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v11, 0x0

    .end local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .local v12, "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_5

    :try_start_2
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;-><init>()V

    .local v10, "spExclusion":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    const-string v0, "server_spexclusion_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->id:Ljava/lang/String;

    const-string v0, "ssid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->ssid:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v10    # "spExclusion":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    :cond_5
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    goto :goto_0

    .end local v6    # "count":I
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "HotspotDBHandler"

    const-string v1, "getSPExclusionList: Exception Occurred, setting Exclusion List to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v11, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

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

    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

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

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-eqz v6, :cond_0

    if-le v6, v10, :cond_1

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :goto_0
    return v9

    .restart local v6    # "count":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "update_identifier"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .local v9, "updateIdentifier":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "count":I
    .end local v9    # "updateIdentifier":I
    :catch_0
    move-exception v8

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

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToFQDN(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HotspotDBHandler"

    const-string v3, "updateMO: Failed to add the PPSMO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToHotspot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HotspotDBHandler"

    const-string v3, "updateMO: Failed to add the PPSMO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    if-eqz v2, :cond_3

    const-string v2, "HotspotDBHandler"

    const-string v3, "policy object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addtoPreferredRoamingPartner(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToMinBackHaulThreshold(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToSPExclusionList(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToRequiredProtoPortTupple(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToPolicyUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    :cond_3
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    const-string v2, "HotspotDBHandler"

    const-string v3, "updateMO: aaaServerTrustRootObj object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToAAAServerTrustRoot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    :cond_4
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    if-eqz v2, :cond_5

    const-string v2, "HotspotDBHandler"

    const-string v3, "updateMO: subscriptionUpdate object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToSubscriptionUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    :cond_5
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    if-eqz v2, :cond_7

    const-string v2, "HotspotDBHandler"

    const-string v3, "updateMO: homeSPObj object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addNetworkID(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addOtherHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    :goto_1
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    if-eqz v2, :cond_6

    const-string v2, "HotspotDBHandler"

    const-string v3, "updateMO: credentialObj object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addCredential(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x32

    goto :goto_0

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

    const/16 v10, 0x32

    .local v10, "retVal":I
    if-nez p1, :cond_0

    const-string v1, "HotspotDBHandler"

    const-string v2, "addPPSMONode: Not a valid PPSMO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x33

    :goto_0
    return v1

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

    iget-object v9, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    .local v9, "ppsMoId":Ljava/lang/String;
    const-string v3, "ppsmo_id=? AND fqdn=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    aput-object v2, v4, v1

    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, "dbCur":Landroid/database/Cursor;
    if-nez v7, :cond_1

    const-string v1, "HotspotDBHandler"

    const-string v2, "addPPSMONode: Database doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3b

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-nez v6, :cond_2

    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I

    move-result v10

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v1, v10

    goto :goto_0

    :cond_2
    if-ne v6, v12, :cond_3

    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    const-string v2, "Already Subscribed. Clear Cred to subscribe again"

    const/4 v5, 0x1

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .local v11, "toast":Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    const/16 v10, 0x35

    goto :goto_1

    .end local v11    # "toast":Landroid/widget/Toast;
    :cond_3
    if-ne v6, v12, :cond_4

    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    if-ne v1, v12, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "hotspot_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->updateMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I

    move-result v10

    goto :goto_1

    :cond_4
    const-string v1, "HotspotDBHandler"

    const-string v2, "addPPSMONode: The same entry already exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0x35

    goto :goto_1

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v6    # "count":I
    .end local v7    # "dbCur":Landroid/database/Cursor;
    .end local v9    # "ppsMoId":Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, 0x35

    goto/16 :goto_0
.end method

.method public addPPSMONodeFromCred(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I
    .locals 13
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    .prologue
    const/16 v11, 0x33

    const/4 v12, 0x1

    const/16 v10, 0x32

    .local v10, "retVal":I
    if-nez p1, :cond_0

    const-string v1, "HotspotDBHandler"

    const-string v2, "addPPSMONodeFromCred: Not a valid PPSMO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v11

    :goto_0
    return v1

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

    iget-object v9, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    .local v9, "ppsMoId":Ljava/lang/String;
    const-string v3, "ppsmo_id=? AND fqdn=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    aput-object v2, v4, v1

    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, "dbCur":Landroid/database/Cursor;
    if-nez v7, :cond_1

    const-string v1, "HotspotDBHandler"

    const-string v2, "addPPSMONodeFromCred: Database doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3b

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-nez v6, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I

    move-result v10

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v1, v10

    goto :goto_0

    :cond_2
    if-ne v6, v12, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "hotspot_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->updateMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I

    move-result v10

    goto :goto_1

    :cond_3
    const-string v1, "HotspotDBHandler"

    const-string v2, "addPPSMONodeFromCred: More than one entry exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0x33

    goto :goto_1

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v6    # "count":I
    .end local v7    # "dbCur":Landroid/database/Cursor;
    .end local v9    # "ppsMoId":Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v11

    goto/16 :goto_0
.end method

.method public addToSpIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;

    .prologue
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "sp_icon_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sp_icon_type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sp_icon_hash"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "newUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

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

    const/4 v2, 0x1

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
    const-string v1, "hotspot_id=?"

    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .local v0, "selectArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteTheContents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteppsMO(I)V
    .locals 4
    .param p1, "credentialID"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "hotspotID":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v2, "HotspotDBHandler"

    const-string v3, "Entry doesn\'t exists "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteSubscription(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .local v10, "stbuilder":Ljava/lang/StringBuilder;
    const-string v0, "hotspot_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHotspotId: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    const/4 v0, 0x1

    if-le v6, v0, :cond_4

    const-string v0, "HotspotDBHandler"

    const-string v1, "getHotspotId: More than 2 entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .local v11, "values":Landroid/content/ContentValues;
    const-string v1, "enable_subscr"

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .local v9, "status":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_0

    .end local v6    # "count":I
    .end local v9    # "status":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    const/4 v0, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .restart local v6    # "count":I
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

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
    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getAAATrustRoot: Check for one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getAAATrustRoot: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const-string v3, ""

    .local v3, "selection":Ljava/lang/String;
    const-string v3, "hotspot_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "dbCur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getAAATrustRoot: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v7, 0x0

    .end local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    :cond_4
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

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

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v6, 0x0

    .local v6, "aaaserverTrust":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .local v8, "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_5

    :try_start_2
    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    .end local v6    # "aaaserverTrust":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    invoke-direct {v6}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;-><init>()V

    .restart local v6    # "aaaserverTrust":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    const-string v0, "server_trustroot_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootID:Ljava/lang/String;

    const-string v0, "certurl"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootURL:Ljava/lang/String;

    const-string v0, "cert_sha256_finger_print"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .end local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    goto/16 :goto_0

    .end local v6    # "aaaserverTrust":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    .end local v9    # "count":I
    .end local v12    # "i":I
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x0

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

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

    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .local v4, "selectArgs":[Ljava/lang/String;
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "credential_id"

    aput-object v0, v2, v10

    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, -0x1

    .local v6, "credId":I
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v9, :cond_3

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, -0x1

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "credential_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

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

    const-string v0, "HotspotDBHandler"

    const-string v1, "getCredentialIds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "credential_id"

    aput-object v1, v2, v0

    .local v2, "projection":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "dbCur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v13

    :goto_0
    return-object v0

    :cond_3
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v8, "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v6, :cond_4

    const-string v0, "credential_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .local v9, "credentialID":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v9    # "credentialID":I
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .end local v6    # "count":I
    .end local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "i":I
    .restart local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5
    :goto_2
    move-object v0, v7

    goto :goto_0

    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x0

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .end local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "count":I
    .restart local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_4

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
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;-><init>()V

    .local v0, "digitalCert":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;
    const-string v1, "certificate_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certificateType:Ljava/lang/String;

    const-string v1, "cert_sha256_finger_print"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    const-string v1, "cert_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certID:I

    const-string v1, "client_cert_hash"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->clientcertHash:Ljava/lang/String;

    const-string v1, "private_key_hash"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->privateKeyHash:Ljava/lang/String;

    return-object v0
.end method

.method public getEAPInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;
    .locals 2
    .param p1, "dbCur"    # Landroid/database/Cursor;

    .prologue
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;-><init>()V

    .local v0, "eapMethod":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;
    const-string v1, "eap_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    const-string v1, "inner_method"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    const-string v1, "inner_eaptype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerEAPType:Ljava/lang/String;

    const-string v1, "inner_vendor_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorID:I

    const-string v1, "inner_vendor_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorType:I

    const-string v1, "vendor_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorID:I

    const-string v1, "vendor_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorType:I

    return-object v0
.end method

.method public getEnableSubscription(I)Z
    .locals 12
    .param p1, "hotspotID"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getEnableSubscription"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v9, 0x1

    .local v9, "enableSubscription":Z
    const/4 v7, 0x0

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

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-eqz v6, :cond_0

    if-le v6, v10, :cond_2

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

    const/4 v9, 0x0

    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_1
    :goto_1
    return v9

    .restart local v6    # "count":I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

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

    .end local v6    # "count":I
    :catch_0
    move-exception v8

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

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

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

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "hotspotID":Ljava/lang/String;
    if-nez v10, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getFqdn: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v12

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .local v11, "stbuilder":Ljava/lang/StringBuilder;
    const-string v0, "hotspot_id"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v13, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v10, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, "fqdn":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getFqdn: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v12

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-le v6, v13, :cond_7

    const-string v0, "HotspotDBHandler"

    const-string v1, "getFqdn: More than 2 entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v12

    goto :goto_0

    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "fqdn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

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

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception occurred, Setting fqdn to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

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
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHomeOInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getHomeOInfo:Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v10, 0x0

    .local v10, "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHomeOInfo :Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v10, 0x0

    .end local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v9, 0x0

    .local v9, "homeSPOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .local v11, "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v6, :cond_6

    :try_start_2
    new-instance v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    .end local v9    # "homeSPOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    invoke-direct {v9}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;-><init>()V

    .restart local v9    # "homeSPOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    const-string v0, "server_homeoilist_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    const-string v0, "homeoi"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOI:Ljava/lang/String;

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

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v10, v11

    .end local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    goto/16 :goto_0

    .end local v6    # "count":I
    .end local v9    # "homeSPOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    .end local v12    # "i":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

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

    const-string v0, "HotspotDBHandler"

    const-string v1, "getHomeSPInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getHomeSPInfo: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHomeSPInfo: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-le v6, v12, :cond_7

    const-string v0, "HotspotDBHandler"

    const-string v1, "getHomeSPInfo: More than 1 entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v11

    goto :goto_0

    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .local v10, "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :try_start_3
    const-string v0, "fqdn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    const-string v0, "friendly_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    const-string v0, "icon_url"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;

    const-string v0, "roamingconsortiumoi"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeOInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getNetworkIDInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getOtherHomePartner(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    goto/16 :goto_0

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .end local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v6    # "count":I
    .restart local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    goto :goto_2

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

    const-string v3, "fqdn=? AND ppsmo_id=?"

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

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    aput-object p2, v4, v12

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "id":I
    const/4 v7, 0x0

    .local v7, "cr":Landroid/database/Cursor;
    const/4 v9, 0x0

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

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v11, "values":Landroid/content/ContentValues;
    if-nez v6, :cond_2

    move v9, v6

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    return v9

    .restart local v6    # "count":I
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_2
    if-ne v6, v12, :cond_0

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "hotspot_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    move v9, v10

    goto :goto_0

    .end local v6    # "count":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

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

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getHotspotId(I)Ljava/lang/String;
    .locals 11
    .param p1, "credentialID"    # I

    .prologue
    const/4 v10, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .local v9, "stbuilder":Ljava/lang/StringBuilder;
    const-string v0, "credential_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "dbCur":Landroid/database/Cursor;
    const/4 v8, 0x0

    .local v8, "hotspotID":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHotspotId: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    :goto_0
    return-object v0

    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "hotspot_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

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

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception occurred, Setting hotspotID to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

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

    const-string v0, "HotspotDBHandler"

    const-string v1, "getHotspotIds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "hotspot_id"

    aput-object v1, v2, v0

    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    const-string v0, "HotspotDBHandler"

    const-string v1, "getHotspotIds:Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v13

    :goto_0
    return-object v0

    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v10, "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v6, :cond_4

    const-string v0, "hotspot_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .local v11, "hotspotId":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v11    # "hotspotId":I
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v6    # "count":I
    .end local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "i":I
    .restart local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5
    :goto_2
    move-object v0, v9

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v9, 0x0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .end local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "count":I
    .restart local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_4

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

    const-string v0, "HotspotDBHandler"

    const-string v1, "getMethodType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "credential_id=?"

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v9, -0x1

    .local v9, "methodType":I
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    const-string v0, "HotspotDBHandler"

    const-string v1, "getMethodType: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v10

    :goto_0
    return v0

    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-le v6, v11, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v10

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "method_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_6
    :goto_1
    move v0, v9

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

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
    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getMinBackHaulThresholdInfo: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getMinBackHaulThresholdInfo: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "dbCur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getMinBackHaulThresholdInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v7, 0x0

    .end local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    :cond_4
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .local v9, "count":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .local v8, "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_5

    :try_start_2
    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    invoke-direct {v6}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;-><init>()V

    .local v6, "backHaulThreshold":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    const-string v0, "server_backhaul_threshold_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->minBackHaulThresholdID:Ljava/lang/String;

    const-string v0, "dlbandwidh"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    const-string v0, "network_type"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    const-string v0, "ulbandwidth"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->ulBandWidth:I

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v6    # "backHaulThreshold":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    :cond_5
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .end local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    goto/16 :goto_0

    .end local v9    # "count":I
    .end local v12    # "i":I
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception occured, Setting backHaulThresholdList to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x0

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

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
    const-string v0, "HotspotDBHandler"

    const-string v1, "getNetworkIDInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getNetworkIDInfo: Check for one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getNetworkIDInfo: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .local v11, "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getNetworkIDInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v11, 0x0

    .end local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x0

    .local v10, "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .local v12, "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_5

    :try_start_2
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    .end local v10    # "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;-><init>()V

    .restart local v10    # "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    const-string v0, "server_network_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->networkID:Ljava/lang/String;

    const-string v0, "ssid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->ssid:Ljava/lang/String;

    const-string v0, "hessid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->hessid:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    goto :goto_0

    .end local v6    # "count":I
    .end local v9    # "i":I
    .end local v10    # "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

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
    const-string v0, "HotspotDBHandler"

    const-string v1, "getOtherHomePartner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getOtherHomePartner: Check for one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getOtherHomePartner: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .local v11, "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getOtherHomePartner: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v11, 0x0

    .end local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v9, 0x0

    .local v9, "homePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .local v12, "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_5

    :try_start_2
    new-instance v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;

    .end local v9    # "homePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    invoke-direct {v9}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;-><init>()V

    .restart local v9    # "homePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    const-string v0, "server_otherhome_network_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    const-string v0, "fqdn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->fqdn:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    goto :goto_0

    .end local v6    # "count":I
    .end local v9    # "homePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    .end local v10    # "i":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v11, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

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

    const-string v0, "HotspotDBHandler"

    const-string v1, "getPPSMONode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;-><init>()V

    .local v10, "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "hotspotID":Ljava/lang/String;
    if-nez v9, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .end local v10    # "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_0
    :goto_0
    return-object v10

    .restart local v10    # "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_1
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v10, v11

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-le v6, v12, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v10, v11

    goto :goto_0

    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    iput-object v9, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPpsMoID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUpdateIdentifier(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    const-string v0, "subscription_priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    const-string v0, "user_priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->userPriority:I

    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getAAATrustRoot(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionParameterInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getRemediationInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

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

    const-string v0, "HotspotDBHandler"

    const-string v1, "getPPSMONode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;-><init>()V

    .local v10, "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-gez p1, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .end local v10    # "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_0
    :goto_0
    return-object v10

    .restart local v10    # "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "hsId":Ljava/lang/String;
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v10, v11

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-le v6, v12, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v10, v11

    goto :goto_0

    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    iput-object v9, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPpsMoID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUpdateIdentifier(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    const-string v0, "subscription_priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    const-string v0, "user_priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->userPriority:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getAAATrustRoot(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionParameterInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getRemediationInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

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

    new-instance v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    invoke-direct {v9}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;-><init>()V

    .local v9, "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyInfo: SP Info doesnt exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_1
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v10

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-le v6, v11, :cond_7

    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyInfo: More than 2 entries exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v10

    goto :goto_0

    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "maximumbss_load_value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->maximumBSSLoadValue:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getMinBackHaulThresholdInfo(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPreferredRoamingPartnerInfo(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getProtoPortTupple(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSPExclusionList(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_8
    :goto_1
    move-object v0, v9

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyInfo: Exception Occured, Setting Policy to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v9, 0x0

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

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

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "hotspotID":Ljava/lang/String;
    if-nez v9, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyURI: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    const-string v0, "0"

    aput-object v0, v4, v12

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v10, 0x0

    .local v10, "policyURI":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyURI: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v10, v11

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-le v6, v12, :cond_7

    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyURI: More than 1entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v10, v11

    goto :goto_0

    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "uri"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception Occured, Setting policyURI to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

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

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyUpdateInfo: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyUpdateInfo: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const-string v0, "0"

    aput-object v0, v4, v12

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyUpdateInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-le v6, v12, :cond_8

    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyUpdateInfo: More than 2 entries exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v9, v11

    goto :goto_0

    :cond_8
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .local v10, "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :try_start_3
    const-string v0, "other"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->other:Ljava/lang/String;

    const-string v0, "restriction"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->restriction:Ljava/lang/String;

    const-string v0, "update_interval"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateInterval:J

    const-string v0, "update_method"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    const-string v0, "uri"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->uri:Ljava/lang/String;

    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;-><init>()V

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    const-string v1, "username"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    const-string v1, "password"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getTrustRootInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    goto/16 :goto_0

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "HotspotDBHandler"

    const-string v1, "getPolicyUpdateInfo: Exception occurred, Settings PolicyUpdate to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .end local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v6    # "count":I
    .restart local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    goto :goto_2

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
    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getPreferredRoamingPartnerInfo: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getPreferredRoamingPartnerInfo: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .local v11, "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getPreferredRoamingPartnerInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v11, 0x0

    .end local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .local v12, "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_5

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

    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;-><init>()V

    .local v10, "preferredRoamingPartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    const-string v0, "server_roaming_partner_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->roamingPartnerID:Ljava/lang/String;

    const-string v0, "country"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    const-string v0, "fqdn_match"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    const-string v0, "priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->priority:I

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .end local v10    # "preferredRoamingPartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    :cond_5
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    goto/16 :goto_0

    .end local v6    # "count":I
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception occurred, Setting preferredRoamingPartnerList to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v11, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

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
    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getProtoPortTupple: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getProtoPortTupple: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getProtoPortTupple: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v11, 0x0

    .end local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .local v12, "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_5

    :try_start_2
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;-><init>()V

    .local v10, "protoPortTupple":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    const-string v0, "server_tupple_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->protoPortTuppleID:Ljava/lang/String;

    const-string v0, "ip_protocol"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->ipProtocol:I

    const-string v0, "port_number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->portNumber:I

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v10    # "protoPortTupple":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    :cond_5
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    goto :goto_0

    .end local v6    # "count":I
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception occurred, Setting protoPortTuppleList to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v11, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

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

    const-string v0, "HotspotDBHandler"

    const-string v1, "getRemediationInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "Check one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getRemediationInfo: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-le v6, v12, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v11

    goto :goto_0

    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .local v10, "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    :try_start_3
    const-string v0, "uri"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->URI:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getTrustRootInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    goto :goto_0

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .end local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v6    # "count":I
    .restart local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    goto :goto_2

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
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;-><init>()V

    .local v0, "sim":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;
    const-string v1, "sim_eaptype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    const-string v1, "imsi"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getSpIcon(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .locals 14
    .param p1, "hsId"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "hotspotId":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v10, 0x0

    .local v10, "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :try_start_0
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v12

    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectArgs":[Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-le v6, v13, :cond_6

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v12

    goto :goto_0

    :cond_6
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;

    invoke-direct {v11}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .local v11, "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :try_start_3
    const-string v0, "sp_icon_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->name:Ljava/lang/String;

    const-string v0, "sp_icon_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->type:Ljava/lang/String;

    const-string v0, "sp_icon_hash"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->hash:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_9

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

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

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
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSpIconList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

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

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSpIconList: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_4

    const-string v0, "sp_icon_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "name":Ljava/lang/String;
    const-string v0, "sp_icon_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "type":Ljava/lang/String;
    const-string v0, "sp_icon_hash"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

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

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v9    # "hash":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "type":Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v6    # "count":I
    .end local v10    # "i":I
    .end local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    move-object v0, v11

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v11, 0x0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .end local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "count":I
    .restart local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

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

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getSubscriptionParameterInfo: SP Info doesnt exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    const-string v3, ""

    .local v3, "selection":Ljava/lang/String;
    const-string v3, "hotspot_id=?"

    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSubscriptionParameterInfo: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-le v6, v12, :cond_7

    const-string v0, "HotspotDBHandler"

    const-string v1, "getSubscriptionParameterInfo: More than 2 entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v11

    goto :goto_0

    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .local v10, "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    :try_start_3
    const-string v0, "creation_date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->creationDate:Ljava/lang/String;

    const-string v0, "expiration_date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->expirationDate:Ljava/lang/String;

    const-string v0, "type_of_subscription"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->typeOfSubscription:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUsageLimitInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    goto :goto_0

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .end local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v6    # "count":I
    .restart local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    goto :goto_2

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

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getSubscriptionUpdateInfo: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getSubscriptionUpdateInfo: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const-string v0, "1"

    aput-object v0, v4, v12

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getSubscriptionUpdateInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-le v6, v12, :cond_7

    const-string v0, "HotspotDBHandler"

    const-string v1, "getSubscriptionUpdateInfo: More than 2 entries exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v11

    goto :goto_0

    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .local v10, "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :try_start_3
    const-string v0, "other"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->other:Ljava/lang/String;

    const-string v0, "restriction"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->restriction:Ljava/lang/String;

    const-string v0, "update_interval"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateInterval:J

    const-string v0, "update_method"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    const-string v0, "uri"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->uri:Ljava/lang/String;

    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;-><init>()V

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    const-string v1, "username"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    const-string v1, "password"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getTrustRootInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    goto/16 :goto_0

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception Occurred, Setting subscriptionUpdate to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .end local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v6    # "count":I
    .restart local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    goto :goto_2

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
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;-><init>()V

    .local v0, "trustroot":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;
    const-string v1, "certurl"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    const-string v1, "cert_sha256_finger_print"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateIdentifier(I)I
    .locals 13
    .param p1, "credentialID"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getUpdateIdentifier"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "hotspotID":Ljava/lang/String;
    if-nez v9, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getUpdateIdentifier: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    :cond_0
    :goto_0
    return v10

    :cond_1
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v10, -0x1

    .local v10, "updateIdentifier":I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getUpdateIdentifier: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v10, v11

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-le v6, v12, :cond_8

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move v10, v11

    goto :goto_0

    :cond_8
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "update_identifier"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

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

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public getUpdateIdentifierForFqdn(Ljava/lang/String;)I
    .locals 10
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getUpdateIdentifier"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "fqdn=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

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

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-nez v6, :cond_0

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

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :goto_0
    return v9

    .restart local v6    # "count":I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "update_identifier"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .local v9, "updateIdentifier":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "count":I
    .end local v9    # "updateIdentifier":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getUsageLimitInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;
    .locals 2
    .param p1, "dbCur"    # Landroid/database/Cursor;

    .prologue
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;-><init>()V

    .local v0, "usageLimit":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;
    const-string v1, "date_limit"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->dataLimit:I

    const-string v1, "start_date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->startDate:Ljava/lang/String;

    const-string v1, "time_limit"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->timeLimit:I

    const-string v1, "usage_interval"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->usageInterval:I

    return-object v0
.end method

.method public getUserPriority()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getUserPriority"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, "dbCur":Landroid/database/Cursor;
    const/4 v8, 0x0

    .local v8, "userPriority":I
    new-array v2, v9, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "MAX(user_priority)"

    aput-object v1, v2, v0

    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "user_priority"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :catch_0
    move-exception v7

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

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

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

    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;-><init>()V

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

    const-string v1, "machine_managed"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    :goto_1
    iput-boolean v2, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->machineManaged:Z

    const-string v1, "password"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    const-string v1, "soft_tokenapp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->softTokenApp:Ljava/lang/String;

    const-string v1, "username"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getEAPInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    return-object v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .locals 11
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getcredentialInfo: Check for one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "HotspotDBHandler"

    const-string v1, "getcredentialInfo: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const-string v3, "hotspot_id=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "dbCur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_2
    const-string v0, "HotspotDBHandler"

    const-string v1, "getcredentialInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v7, 0x0

    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :cond_4
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    const/4 v0, 0x1

    if-le v6, v0, :cond_5

    const-string v0, "HotspotDBHandler"

    const-string v1, "getcredentialInfo: More than 2 entries exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :cond_5
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    invoke-direct {v8}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .local v8, "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :try_start_3
    const-string v0, "creation_date"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    const-string v0, "expiration_date"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    const-string v0, "realm"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    const-string v0, "check_aaa_server_cert_status"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->checkAAAServerCertStatus:Z

    const-string v0, "credential_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    const-string v0, "hs20_aaa_ca_cert_hash"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->hs20AAAFP:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUsernamePasswordInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getDigitalCertificateInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSIMInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    const-string v0, "method_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->methodType:I

    const-string v0, "credential_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialID:I

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getEAPInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .end local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    goto/16 :goto_0

    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .end local v6    # "count":I
    .end local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "HotspotDBHandler"

    const-string v1, "Exception occurred, Setting credentialInfo to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v7, 0x0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v6    # "count":I
    .restart local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    goto :goto_3

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

    const/4 v4, -0x1

    .local v4, "tempCredentialID":I
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v7, "HotspotDBHandler"

    const-string v8, "setCertID: Entry doesn\'t exists"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v6

    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .local v5, "values":Landroid/content/ContentValues;
    const-string v8, "cert_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "hotspot_id=?"

    .local v2, "selection":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v6

    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v8, v5, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .local v3, "status":I
    if-ne v3, v7, :cond_1

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

    goto :goto_0

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

    goto :goto_0
.end method

.method public setCredDetails(Lcom/android/server/wifi/hs20/WifiHs20CredDetails;)Z
    .locals 11
    .param p1, "credDetails"    # Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "HotspotDBHandler"

    const-string v9, "setCredDetails"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->credID:I

    .local v4, "tempCredentialID":I
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v7, "HotspotDBHandler"

    const-string v8, "setCredDetails: Entry doesn\'t exists"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v6

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

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .local v5, "values":Landroid/content/ContentValues;
    const-string v8, "cert_id"

    iget v9, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->certID:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "private_key_hash"

    iget-object v9, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->privateKeyHash:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "client_cert_hash"

    iget-object v9, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->clientCertHash:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hotspot_id=?"

    .local v2, "selection":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v6

    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v5, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .local v3, "status":I
    if-ne v3, v7, :cond_0

    move v6, v7

    goto :goto_0
.end method

.method public setCredId(II)Z
    .locals 9
    .param p1, "hotSpotId"    # I
    .param p2, "credID"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

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

    const/4 v6, -0x1

    if-ge p1, v6, :cond_0

    const-string v5, "HotspotDBHandler"

    const-string v6, "setCertID: Entry doesn\'t exists"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "credential_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "hotspot_id=?"

    .local v1, "selection":Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    .local v0, "selectArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6, v3, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .local v2, "status":I
    if-ne v2, v5, :cond_1

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

    goto :goto_0

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

    invoke-virtual {p0, p4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v6, "HotspotDBHandler"

    const-string v7, "setCredentials: Entry doesn\'t exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "credential_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "credential_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "method_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "hotspot_id=?"

    .local v2, "selection":Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v5

    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7, v4, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .local v3, "status":I
    if-ne v3, v6, :cond_1

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

    goto :goto_0

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

    goto :goto_0
.end method

.method public setEAPType(II)Z
    .locals 9
    .param p1, "credID"    # I
    .param p2, "eapType"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v6, "HotspotDBHandler"

    const-string v7, "setEAPType: Entry doesn\'t exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "eap_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "hotspot_id=?"

    .local v2, "selection":Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v5

    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7, v4, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .local v3, "status":I
    if-ne v3, v6, :cond_1

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

    goto :goto_0

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

    goto :goto_0
.end method

.method public setSpIcon(ILcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;)Z
    .locals 6
    .param p1, "credId"    # I
    .param p2, "icon"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "hotspotId":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "hotspot_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sp_icon_name"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sp_icon_type"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sp_icon_hash"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->hash:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "newUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

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

    const/4 v3, 0x1

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

    invoke-virtual {p0, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v6, "HotspotDBHandler"

    const-string v7, "setTrustRootFP: Entry doesn\'t exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v5

    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "hs20_aaa_ca_cert_hash"

    invoke-virtual {v4, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hotspot_id=?"

    .local v2, "selection":Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v5

    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v4, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .local v3, "status":I
    if-ne v3, v6, :cond_0

    move v5, v6

    goto :goto_0
.end method

.method public setUpdateIdentifier(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "updateIdentier"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v1, "HotspotDBHandler"

    const-string v2, "setUpdateIdentifier"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "fqdn=?"

    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v11

    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v1, "HotspotDBHandler"

    const-string v2, "setUpdateIdentifier: Database doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v1, v11

    :goto_0
    return v1

    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "count":I
    if-lt v6, v12, :cond_2

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .local v10, "values":Landroid/content/ContentValues;
    const-string v1, "update_identifier"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v9    # "i":I
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_2
    const-string v1, "HotspotDBHandler"

    const-string v2, "setUpdateIdentifier: Entry doesnt exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_4
    :goto_2
    move v1, v12

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

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

    move v4, p1

    .local v4, "tempCredentialID":I
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v7, "HotspotDBHandler"

    const-string v8, "setUserPriority: Entry doesn\'t exists"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v6

    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .local v5, "values":Landroid/content/ContentValues;
    const-string v8, "user_priority"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "hotspot_id=?"

    .local v2, "selection":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v6

    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v5, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .local v3, "status":I
    if-ne v3, v7, :cond_0

    move v6, v7

    goto :goto_0
.end method

.method public setUserPriority(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "hotspotID"    # Ljava/lang/String;
    .param p2, "userPriority"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

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

    if-nez p1, :cond_1

    const-string v5, "HotspotDBHandler"

    const-string v6, "setUserPriority: Entry doesn\'t exists"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "user_priority"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "hotspot_id=?"

    .local v1, "selection":Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v4

    .local v0, "selectArgs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v3, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .local v2, "status":I
    if-ne v2, v5, :cond_0

    move v4, v5

    goto :goto_0
.end method
