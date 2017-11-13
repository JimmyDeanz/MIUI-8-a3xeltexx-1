.class public Lcom/android/server/analytics/data/collection/adapterlayer/UtilsAdapter;
.super Ljava/lang/Object;
.source "UtilsAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;

    .prologue
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static getIntSystemProperty(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultvalue"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPermissions(Ljava/lang/String;[I)I
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "outPermissions"    # [I

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultvalue"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemSecureDirectory()Ljava/io/File;
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static intToHexString(IZI)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I
    .param p1, "upperCase"    # Z
    .param p2, "minWidth"    # I

    .prologue
    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "addrString"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseNumericAddress(Ljava/lang/String;)[B
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    return-object v0
.end method

.method public static readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
    .locals 0
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "fields"    # [Ljava/lang/String;
    .param p2, "outSizes"    # [J

    .prologue
    invoke-static {p0, p1, p2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    return-void
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "byteArray"    # [B

    .prologue
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
