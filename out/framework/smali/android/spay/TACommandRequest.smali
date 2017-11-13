.class public Landroid/spay/TACommandRequest;
.super Ljava/lang/Object;
.source "TACommandRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/spay/TACommandRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z = false

.field public static final HEADER_SIZE:I = 0x64

.field public static final MAX_BUFFER_SIZE:I = 0x500000

.field public static final MAX_DATA_TRANSACTION_SIZE:I = 0xc00

.field public static final PAYLOAD_SIZE:I = 0xb9c

.field private static final TAG:Ljava/lang/String; = "TACommandRequest"


# instance fields
.field public mCommandId:I

.field public mLength:I

.field public mMagicNum:[B

.field public mOffset:I

.field public mRequest:[B

.field public mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Landroid/spay/TACommandRequest;->DEBUG:Z

    .line 75
    new-instance v0, Landroid/spay/TACommandRequest$1;

    invoke-direct {v0}, Landroid/spay/TACommandRequest$1;-><init>()V

    sput-object v0, Landroid/spay/TACommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    .line 40
    iput-object v2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    .line 42
    iput v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    .line 43
    iput v1, p0, Landroid/spay/TACommandRequest;->mOffset:I

    .line 45
    iput v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    .line 46
    iput-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    .line 54
    return-void
.end method

.method private constructor <init>(I[BIII[B)V
    .locals 3
    .param p1, "_version"    # I
    .param p2, "_magicNum"    # [B
    .param p3, "_commandId"    # I
    .param p4, "_length"    # I
    .param p5, "_offset"    # I
    .param p6, "_requestPayload"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    .line 40
    iput-object v2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    .line 42
    iput v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    .line 43
    iput v1, p0, Landroid/spay/TACommandRequest;->mOffset:I

    .line 45
    iput v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    .line 46
    iput-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    .line 135
    iput p1, p0, Landroid/spay/TACommandRequest;->mVersion:I

    .line 136
    iput-object p2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    .line 137
    iput p3, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    .line 138
    iput p4, p0, Landroid/spay/TACommandRequest;->mLength:I

    .line 139
    iput p5, p0, Landroid/spay/TACommandRequest;->mOffset:I

    .line 140
    iput-object p6, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    .line 141
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    .line 40
    iput-object v2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    .line 42
    iput v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    .line 43
    iput v1, p0, Landroid/spay/TACommandRequest;->mOffset:I

    .line 45
    iput v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    .line 46
    iput-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    .line 88
    invoke-virtual {p0, p1}, Landroid/spay/TACommandRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/spay/TACommandRequest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/spay/TACommandRequest$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/spay/TACommandRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public disassemble()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/spay/TACommandRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v7, "arr":Ljava/util/List;, "Ljava/util/List<Landroid/spay/TACommandRequest;>;"
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    if-nez v0, :cond_1

    .line 159
    const/4 v7, 0x0

    .line 188
    .end local v7    # "arr":Ljava/util/List;, "Ljava/util/List<Landroid/spay/TACommandRequest;>;"
    :cond_0
    :goto_0
    return-object v7

    .line 162
    .restart local v7    # "arr":Ljava/util/List;, "Ljava/util/List<Landroid/spay/TACommandRequest;>;"
    :cond_1
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v0, v0

    const/16 v1, 0xb9c

    if-gt v0, v1, :cond_2

    .line 163
    invoke-interface {v7, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    sget-boolean v0, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "TACommandRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need to divide the mRequest, len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_2
    sget-boolean v0, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 171
    const-string v0, "TACommandRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dividing the mRequest, len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3
    const/4 v5, 0x0

    .line 175
    .local v5, "offset":I
    :goto_1
    add-int/lit16 v0, v5, 0xb9c

    iget v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    if-ge v0, v1, :cond_5

    .line 176
    sget-boolean v0, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 177
    const-string v0, "TACommandRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generating the chunk from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit16 v2, v5, 0xb9c

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_4
    new-instance v0, Landroid/spay/TACommandRequest;

    iget v1, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iget-object v2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iget v3, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iget v4, p0, Landroid/spay/TACommandRequest;->mLength:I

    iget-object v6, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    add-int/lit16 v8, v5, 0xb9c

    invoke-static {v6, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/spay/TACommandRequest;-><init>(I[BIII[B)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit16 v5, v5, 0xb9c

    goto :goto_1

    .line 184
    :cond_5
    new-instance v0, Landroid/spay/TACommandRequest;

    iget v1, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iget-object v2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iget v3, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iget v4, p0, Landroid/spay/TACommandRequest;->mLength:I

    iget-object v6, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    iget v8, p0, Landroid/spay/TACommandRequest;->mLength:I

    invoke-static {v6, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/spay/TACommandRequest;-><init>(I[BIII[B)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    sget-boolean v0, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "TACommandRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generating the chunk from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/spay/TACommandRequest;->mLength:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public dump()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 193
    const-string v7, "TACommandRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Command ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v7, "TACommandRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x64

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 197
    .local v3, "hex":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "{"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v7, v7

    if-ge v4, v7, :cond_1

    .line 199
    const-string v7, "0x%02X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    aget-byte v9, v9, v4

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v7, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v7, v7

    if-eq v4, v7, :cond_0

    .line 201
    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 203
    :cond_1
    const-string/jumbo v7, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v7, "TACommandRequest"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v5, 0x0

    .line 207
    .local v5, "outFile":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 209
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/mnt/sdcard/sendbuf.txt"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v5    # "outFile":Ljava/io/FileWriter;
    .local v6, "outFile":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 216
    if-eqz v1, :cond_2

    .line 217
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 219
    :cond_2
    if-eqz v6, :cond_3

    .line 220
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 228
    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/FileWriter;
    :cond_4
    :goto_1
    return-void

    .line 222
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "outFile":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 226
    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/FileWriter;
    goto :goto_1

    .line 224
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "outFile":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    :catch_1
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 227
    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/FileWriter;
    goto :goto_1

    .line 212
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 213
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 216
    if-eqz v0, :cond_5

    .line 217
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 219
    :cond_5
    if-eqz v5, :cond_4

    .line 220
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 222
    :catch_3
    move-exception v2

    .line 223
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 224
    .local v2, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 225
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 215
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 216
    :goto_3
    if-eqz v0, :cond_6

    .line 217
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 219
    :cond_6
    if-eqz v5, :cond_7

    .line 220
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 226
    :cond_7
    :goto_4
    throw v7

    .line 222
    :catch_5
    move-exception v2

    .line 223
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 224
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 215
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "outFile":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/FileWriter;
    goto :goto_3

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "outFile":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/FileWriter;
    goto :goto_3

    .line 212
    .end local v5    # "outFile":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "outFile":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public getChunkOffset()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/spay/TACommandRequest;->mOffset:I

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    return-object v0
.end method

.method public getTotalLength()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Landroid/spay/TACommandRequest;->mLength:I

    return v0
.end method

.method public init(I[BI[B)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "magic"    # [B
    .param p3, "cmdId"    # I
    .param p4, "request"    # [B

    .prologue
    const/4 v1, 0x0

    .line 62
    iput p1, p0, Landroid/spay/TACommandRequest;->mVersion:I

    .line 63
    iput-object p2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    .line 64
    iput p3, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    .line 65
    iput-object p4, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    .line 66
    if-eqz p4, :cond_0

    .line 67
    array-length v0, p4

    iput v0, p0, Landroid/spay/TACommandRequest;->mLength:I

    .line 71
    :goto_0
    iput v1, p0, Landroid/spay/TACommandRequest;->mOffset:I

    .line 72
    return-void

    .line 69
    :cond_0
    iput v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandRequest;->mVersion:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 113
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    .line 114
    iget-object v1, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandRequest;->mOffset:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    if-lez v0, :cond_1

    .line 122
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    .line 123
    iget-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 125
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 93
    iget v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 97
    iget v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/spay/TACommandRequest;->mLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/spay/TACommandRequest;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method
