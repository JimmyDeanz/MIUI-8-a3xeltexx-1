.class Lcom/android/server/enterprise/certificate/EdmKeyStore;
.super Ljava/lang/Object;
.source "EdmKeyStore.java"


# static fields
.field public static final ALIAS_USERID_SEPARATOR:Ljava/lang/String; = "_"

.field private static final NATIVE_KEYSTORE_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "EdmKeyStore"

.field private static final TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

.field static final TYPE_NATIVE:I = 0x2

.field static final TYPE_TRUSTED:I = 0x0

.field static final TYPE_UNTRUSTED:I = 0x3

.field static final TYPE_USER:I = 0x1

.field private static final UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

.field private static final USER_KEYSTORE_PATH:Ljava/lang/String;

.field private static mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private static mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private static mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private static mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;


# instance fields
.field private mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private mKeyStore:Ljava/security/KeyStore;

.field private mKeyStoreLock:Ljava/lang/Object;

.field private mPath:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "enterprise_cacerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "enterprise_untrustedcerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "enterprise_usercerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->USER_KEYSTORE_PATH:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "enterprise_nativecerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->NATIVE_KEYSTORE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    .line 161
    new-instance v6, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    iput-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 162
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    .line 163
    iput p2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mType:I

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 167
    .local v4, "fos":Ljava/io/FileOutputStream;
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v7

    .line 170
    :try_start_0
    const-string v6, "BKS"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 172
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 187
    if-eqz v4, :cond_5

    .line 189
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v2, v3

    .line 196
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    if-eqz v2, :cond_0

    .line 197
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 200
    :cond_0
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 201
    return-void

    .line 190
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "ex":Ljava/io/IOException;
    :try_start_5
    const-string v6, "EdmKeyStore"

    const-string/jumbo v8, "fos close failed"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v2, v3

    .line 192
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 174
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v2, :cond_4

    .line 176
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 177
    const/4 v2, 0x0

    move-object v3, v2

    .line 181
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_7
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 182
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 183
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_8
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 184
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 185
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :try_start_9
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 187
    if-eqz v5, :cond_3

    .line 189
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v4, v5

    .line 192
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 190
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 191
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_b
    const-string v6, "EdmKeyStore"

    const-string/jumbo v8, "fos close failed"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object v4, v5

    .line 192
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_1

    .line 189
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 192
    :cond_1
    :goto_4
    :try_start_d
    throw v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 196
    :catchall_1
    move-exception v6

    :goto_5
    if-eqz v2, :cond_2

    .line 197
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_2
    throw v6

    .line 200
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v6

    .line 190
    :catch_3
    move-exception v1

    .line 191
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_f
    const-string v8, "EdmKeyStore"

    const-string/jumbo v9, "fos close failed"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_4

    .line 196
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v6

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_6
    move-exception v6

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_7
    move-exception v6

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 174
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    :cond_4
    move-object v3, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static areEqual(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .param p0, "cert1"    # Ljava/security/cert/X509Certificate;
    .param p1, "cert2"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 563
    const/4 v1, 0x0

    .line 565
    .local v1, "result":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 566
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 571
    :cond_0
    :goto_0
    return v1

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private changeAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "oldAlias"    # Ljava/lang/String;
    .param p2, "newAlias"    # Ljava/lang/String;

    .prologue
    .line 696
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 697
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 698
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, p2, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v1

    .line 700
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v2, "EdmKeyStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with keystore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findCertificateOrIssuer(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Ljava/security/cert/X509Certificate;
    .locals 14
    .param p1, "cache"    # Lcom/android/server/enterprise/certificate/CertificateCache;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "userId"    # I
    .param p4, "containerOwner"    # I

    .prologue
    .line 405
    const/4 v6, 0x0

    .line 408
    .local v6, "ca":Ljava/security/cert/X509Certificate;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p1, v11, v0, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAllAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;Ljavax/security/auth/x500/X500Principal;II)Ljava/util/List;

    move-result-object v4

    .line 410
    .local v4, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 411
    .local v2, "alias":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v11, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    .line 412
    if-eqz v6, :cond_0

    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->areEqual(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v6

    .line 442
    .end local v2    # "alias":Ljava/lang/String;
    .end local v4    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v11

    .line 418
    .restart local v4    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p1, v11, v0, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAllAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;Ljavax/security/auth/x500/X500Principal;II)Ljava/util/List;

    move-result-object v10

    .line 420
    .local v10, "issuerAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 421
    .local v9, "issuerAlias":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v11, v9}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    .line 422
    if-eqz v6, :cond_2

    move-object/from16 v0, p2

    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->matchPublicKey(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v6

    .line 423
    goto :goto_0

    .line 428
    .end local v9    # "issuerAlias":Ljava/lang/String;
    :cond_3
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;II)Ljava/util/List;

    move-result-object v5

    .line 429
    .local v5, "aliasesForKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 430
    .local v3, "alias2":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v11, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    .line 431
    if-eqz v6, :cond_4

    move-object/from16 v0, p2

    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->matchPublicKey(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v11

    if-nez v11, :cond_5

    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->areEqual(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_4

    :cond_5
    move-object v11, v6

    .line 433
    goto :goto_0

    .line 437
    .end local v3    # "alias2":Ljava/lang/String;
    .end local v4    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "aliasesForKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "issuerAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 438
    .local v7, "e":Ljava/security/KeyStoreException;
    const-string v11, "EdmKeyStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "get error"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v6, 0x0

    .line 442
    .end local v7    # "e":Ljava/security/KeyStoreException;
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private generateAlias(Ljava/security/cert/X509Certificate;I)Ljava/lang/String;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "userId"    # I

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 3
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 322
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;)I

    move-result v0

    .line 323
    .local v0, "hash":I
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateAlias(Ljavax/security/auth/x500/X500Principal;I)Ljava/lang/String;
    .locals 1
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "userId"    # I

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateAllAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;Ljavax/security/auth/x500/X500Principal;II)Ljava/util/List;
    .locals 4
    .param p1, "cache"    # Lcom/android/server/enterprise/certificate/CertificateCache;
    .param p2, "principal"    # Ljavax/security/auth/x500/X500Principal;
    .param p3, "userId"    # I
    .param p4, "containerOwner"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/certificate/CertificateCache;",
            "Ljavax/security/auth/x500/X500Principal;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "alias":Ljava/lang/String;
    invoke-direct {p0, v0, p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-static {p3}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isFromContainerOwner(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_0
    :goto_0
    return-object v1

    .line 346
    :cond_1
    if-eqz p3, :cond_0

    .line 348
    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;II)Ljava/util/List;
    .locals 8
    .param p1, "cache"    # Lcom/android/server/enterprise/certificate/CertificateCache;
    .param p2, "userId"    # I
    .param p3, "containerOwner"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/certificate/CertificateCache;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v3

    .line 580
    .local v3, "isContainer":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 581
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 582
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 583
    .local v0, "alias":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 585
    if-eqz v3, :cond_2

    .line 587
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isFromContainerOwner(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 588
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 599
    .local v2, "e":Ljava/security/KeyStoreException;
    const-string v5, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with keystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .end local v2    # "e":Ljava/security/KeyStoreException;
    :cond_1
    return-object v4

    .line 591
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 593
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    .line 595
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static getAuthorityKeyIdentifier(Ljava/security/cert/X509Certificate;)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
    .locals 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 520
    const-string v3, "2.5.29.35"

    invoke-virtual {p0, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 521
    .local v0, "akidBytes":[B
    if-nez v0, :cond_0

    .line 528
    :goto_0
    return-object v2

    .line 526
    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 527
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method static declared-synchronized getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .locals 4
    .param p0, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 114
    const-class v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    monitor-enter v2

    if-nez p0, :cond_2

    .line 115
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 117
    :try_start_1
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3, p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :cond_1
    :goto_1
    monitor-exit v2

    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 124
    :cond_2
    const/4 v3, 0x1

    if-ne p0, v3, :cond_4

    .line 125
    :try_start_4
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_3

    .line 127
    :try_start_5
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->USER_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3, p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    :cond_3
    :goto_2
    :try_start_6
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_1

    .line 128
    :catch_1
    move-exception v0

    .line 129
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_2

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v3, 0x2

    if-ne p0, v3, :cond_6

    .line 135
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v1, :cond_5

    .line 137
    :try_start_7
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->NATIVE_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3, p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 143
    :cond_5
    :goto_3
    :try_start_8
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_1

    .line 138
    :catch_2
    move-exception v0

    .line 139
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_3

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v3, 0x3

    if-ne p0, v3, :cond_1

    .line 145
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v1, :cond_7

    .line 147
    :try_start_9
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3, p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 153
    :cond_7
    :goto_4
    :try_start_a
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_1

    .line 148
    :catch_3
    move-exception v0

    .line 149
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4
.end method

.method private static getSubjectKeyIdentifier(Ljava/security/cert/X509Certificate;)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    .locals 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 536
    const-string v3, "2.5.29.14"

    invoke-virtual {p0, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 537
    .local v1, "skidBytes":[B
    if-nez v1, :cond_0

    .line 544
    :goto_0
    return-object v2

    .line 542
    :cond_0
    :try_start_0
    invoke-static {v1}, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method static isCa(Ljava/security/cert/X509Certificate;)Z
    .locals 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v3, 0x0

    .line 550
    :try_start_0
    const-string v4, "2.5.29.19"

    invoke-virtual {p0, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 551
    .local v0, "basicConstraints":[B
    if-nez v0, :cond_0

    .line 558
    .end local v0    # "basicConstraints":[B
    :goto_0
    return v3

    .line 553
    .restart local v0    # "basicConstraints":[B
    :cond_0
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 554
    .local v2, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .end local v2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v0

    .line 555
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 556
    .restart local v2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local v2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 557
    .end local v0    # "basicConstraints":[B
    :catch_0
    move-exception v1

    .line 558
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private isFromContainerOwner(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "cache"    # Lcom/android/server/enterprise/certificate/CertificateCache;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "containerOwner"    # I

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->isInAdminList(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static isSelfSigned(Ljava/security/cert/X509Certificate;)Z
    .locals 13
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v11, 0x0

    .line 466
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    move v10, v11

    .line 513
    :goto_0
    return v10

    .line 470
    :cond_0
    invoke-static {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getAuthorityKeyIdentifier(Ljava/security/cert/X509Certificate;)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    move-result-object v0

    .line 471
    .local v0, "akid":Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
    if-eqz v0, :cond_5

    .line 472
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v1

    .line 473
    .local v1, "akidKeyId":[B
    if-eqz v1, :cond_1

    .line 474
    invoke-static {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getSubjectKeyIdentifier(Ljava/security/cert/X509Certificate;)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;

    move-result-object v8

    .line 475
    .local v8, "skid":Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v10

    invoke-static {v1, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_1

    move v10, v11

    .line 476
    goto :goto_0

    .line 480
    .end local v8    # "skid":Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    .line 481
    .local v2, "akidSerial":Ljava/math/BigInteger;
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    move v10, v11

    .line 482
    goto :goto_0

    .line 485
    :cond_2
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->getAuthorityCertIssuer()Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v6

    .line 486
    .local v6, "possibleIssuerNames":Lorg/apache/harmony/security/x509/GeneralNames;
    if-eqz v6, :cond_5

    .line 487
    const/4 v5, 0x0

    .line 490
    .local v5, "issuerName":Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v6}, Lorg/apache/harmony/security/x509/GeneralNames;->getNames()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/security/x509/GeneralName;

    .line 491
    .local v7, "possibleName":Lorg/apache/harmony/security/x509/GeneralName;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v10

    const/4 v12, 0x4

    if-ne v10, v12, :cond_3

    .line 492
    move-object v5, v7

    .line 497
    .end local v7    # "possibleName":Lorg/apache/harmony/security/x509/GeneralName;
    :cond_4
    if-eqz v5, :cond_5

    .line 498
    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/harmony/security/x501/Name;

    const-string v12, "CANONICAL"

    invoke-virtual {v10, v12}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, "issuerCanonical":Ljava/lang/String;
    :try_start_0
    new-instance v10, Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v12

    invoke-direct {v10, v12}, Lorg/apache/harmony/security/x501/Name;-><init>([B)V

    const-string v12, "CANONICAL"

    invoke-virtual {v10, v12}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 504
    .local v9, "subjectCanonical":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_5

    move v10, v11

    .line 505
    goto :goto_0

    .line 507
    .end local v9    # "subjectCanonical":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 513
    .end local v1    # "akidKeyId":[B
    .end local v2    # "akidSerial":Ljava/math/BigInteger;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "issuerCanonical":Ljava/lang/String;
    .end local v5    # "issuerName":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v6    # "possibleIssuerNames":Lorg/apache/harmony/security/x509/GeneralNames;
    :cond_5
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method private matchPublicKey(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .param p1, "ca"    # Ljava/security/cert/X509Certificate;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 450
    const/4 v1, 0x0

    .line 452
    .local v1, "result":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 453
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    const/4 v1, 0x1

    .line 459
    :cond_0
    :goto_0
    return v1

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeUserIdFromAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 609
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 610
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 612
    .end local p1    # "alias":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "alias":Ljava/lang/String;
    :cond_0
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private saveKeyStore()V
    .locals 8

    .prologue
    .line 294
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v5

    .line 295
    const/4 v2, 0x0

    .line 297
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 298
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 302
    if-eqz v3, :cond_2

    .line 304
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v3

    .line 310
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    return-void

    .line 305
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 306
    .local v1, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v4, "EdmKeyStore"

    const-string/jumbo v6, "fos close failed"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v3

    .line 307
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 299
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    const-string v4, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "save error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 302
    if-eqz v2, :cond_0

    .line 304
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 305
    :catch_2
    move-exception v1

    .line 306
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_7
    const-string v4, "EdmKeyStore"

    const-string/jumbo v6, "fos close failed"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v4

    .line 302
    :catchall_1
    move-exception v4

    :goto_3
    if-eqz v2, :cond_1

    .line 304
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 307
    :cond_1
    :goto_4
    :try_start_9
    throw v4

    .line 305
    :catch_3
    move-exception v1

    .line 306
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string v6, "EdmKeyStore"

    const-string/jumbo v7, "fos close failed"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 310
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 302
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 299
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public cleanUid(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 720
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getAliases()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 723
    .local v0, "alias":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 725
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 727
    :cond_0
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    .line 728
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v4, "EdmKeyStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with keystore "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 732
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    .line 733
    return-object v3
.end method

.method containsCertificateOrChain(Landroid/content/Context;Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cache"    # Lcom/android/server/enterprise/certificate/CertificateCache;
    .param p3, "cert"    # Ljava/security/cert/X509Certificate;
    .param p4, "userId"    # I
    .param p5, "containerOwner"    # I

    .prologue
    .line 375
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->findCertificateOrIssuer(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 380
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isSelfSigned(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    invoke-static {p1, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->findIssuerInAndroidKeystore(Landroid/content/Context;Ljava/security/cert/X509Certificate;I)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 387
    .local v3, "aux":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    .line 389
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Landroid/content/Context;Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Z

    move-result v0

    goto :goto_0

    .line 395
    .end local v3    # "aux":Ljava/security/cert/X509Certificate;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 318
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAliases()Ljava/util/List;
    .locals 6
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
    .line 705
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 710
    .local v0, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 711
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 713
    .end local v0    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 714
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v3, "EdmKeyStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with keystore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :cond_0
    return-object v2
.end method

.method getCertificates(Ljava/util/List;I)Ljava/util/Map;
    .locals 9
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v4, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    .local v0, "alias":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :try_start_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "userAlias":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v6, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 281
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_0

    .line 282
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_0
    monitor-exit v7

    goto :goto_0

    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "userAlias":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    .line 285
    :catch_0
    move-exception v2

    .line 286
    .local v2, "e":Ljava/security/KeyStoreException;
    const-string v6, "EdmKeyStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception with keystore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "e":Ljava/security/KeyStoreException;
    :cond_1
    return-object v4
.end method

.method getKeyStore()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method installCertificates(Ljava/util/List;I)Ljava/util/List;
    .locals 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 212
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;I)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "alias":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v0, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 216
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeUserIdFromAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/security/KeyStoreException;
    const-string v5, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with keystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "e":Ljava/security/KeyStoreException;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    .line 225
    return-object v4
.end method

.method installCertificates(Ljava/util/Map;I)Ljava/util/List;
    .locals 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "certList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 233
    .local v2, "entryCert":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "alias":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-virtual {v7, v0, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 236
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    monitor-exit v6

    goto :goto_0

    .end local v0    # "alias":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v5, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with keystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .end local v2    # "entryCert":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    .line 245
    return-object v4
.end method

.method isEmpty()Z
    .locals 5

    .prologue
    .line 354
    const/4 v1, 0x1

    .line 356
    .local v1, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/KeyStore;->size()I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 361
    :goto_0
    return v1

    .line 356
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v2, "EdmKeyStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public performKeystoreUpgrade()V
    .locals 6

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getAliases()Ljava/util/List;

    move-result-object v1

    .line 669
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 691
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    .line 692
    return-void

    .line 674
    :pswitch_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 675
    .local v0, "alias":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 677
    .local v3, "newAlias":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->changeAlias(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 682
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "newAlias":Ljava/lang/String;
    :pswitch_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 683
    .restart local v0    # "alias":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 685
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1010_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 686
    .restart local v3    # "newAlias":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->changeAlias(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performKeystoreUpgrade_old(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getAliases()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 635
    .local v0, "alias":Ljava/lang/String;
    const-string v7, "_"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 636
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 637
    .local v5, "userId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, "newAlias":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->changeAlias(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 649
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "newAlias":Ljava/lang/String;
    .end local v5    # "userId":I
    :cond_1
    const/4 v7, 0x0

    const-string v8, "_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 652
    .local v6, "userIdStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 653
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 654
    .restart local v4    # "newAlias":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->changeAlias(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 655
    .end local v4    # "newAlias":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 656
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v7, "EdmKeyStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "performKeystoreMigration NumberFormatException userId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 660
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "userIdStr":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    .line 661
    return-void
.end method

.method removeCertificates(Ljava/util/List;I)Ljava/util/List;
    .locals 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    .local v0, "alias":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :try_start_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "userIdAlias":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v4}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 259
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v4}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 260
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    monitor-exit v6

    goto :goto_0

    .end local v4    # "userIdAlias":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v5, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with keystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    .line 268
    return-object v3
.end method
