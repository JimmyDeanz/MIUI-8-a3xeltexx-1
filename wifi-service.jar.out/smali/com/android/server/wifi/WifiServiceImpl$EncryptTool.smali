.class Lcom/android/server/wifi/WifiServiceImpl$EncryptTool;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncryptTool"
.end annotation


# static fields
.field private static final HEXSTR:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5038
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 5039
    :cond_0
    const/4 v5, 0x0

    .line 5051
    :goto_0
    return-object v5

    .line 5040
    :cond_1
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v3, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 5041
    .local v3, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 5042
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 5043
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 5045
    .local v1, "encrypted":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 5046
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 5047
    const-string v5, "0123456789ABCDEF"

    aget-byte v6, v1, v2

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "0123456789ABCDEF"

    aget-byte v7, v1, v2

    and-int/lit8 v7, v7, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5046
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5051
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
