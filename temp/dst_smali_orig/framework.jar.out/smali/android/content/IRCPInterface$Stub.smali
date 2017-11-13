.class public abstract Landroid/content/IRCPInterface$Stub;
.super Landroid/os/Binder;
.source "IRCPInterface.java"

# interfaces
.implements Landroid/content/IRCPInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IRCPInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IRCPInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IRCPInterface"

.field static final TRANSACTION_cancel:I = 0xc

.field static final TRANSACTION_cancelCopyChunks:I = 0xb

.field static final TRANSACTION_copyChunks:I = 0xa

.field static final TRANSACTION_copyFile:I = 0x4

.field static final TRANSACTION_copyFiles:I = 0x1

.field static final TRANSACTION_getErrorMessage:I = 0x6

.field static final TRANSACTION_getFileInfo:I = 0x9

.field static final TRANSACTION_getFiles:I = 0x8

.field static final TRANSACTION_isFileExist:I = 0x7

.field static final TRANSACTION_moveFile:I = 0x5

.field static final TRANSACTION_moveFiles:I = 0x2

.field static final TRANSACTION_moveFilesForApp:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.IRCPInterface"

    invoke-virtual {p0, p0, v0}, Landroid/content/IRCPInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IRCPInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.content.IRCPInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/IRCPInterface;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/IRCPInterface;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/IRCPInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/IRCPInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_1
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .local v6, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .local v8, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IRCPInterfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRCPInterfaceCallback;

    move-result-object v9

    .local v9, "_arg4":Landroid/content/IRCPInterfaceCallback;
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/IRCPInterface$Stub;->copyFiles(ILjava/util/List;ILjava/util/List;Landroid/content/IRCPInterfaceCallback;)J

    move-result-wide v24

    .local v24, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    goto :goto_0

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "_arg4":Landroid/content/IRCPInterfaceCallback;
    .end local v24    # "_result":J
    :sswitch_2
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .restart local v8    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IRCPInterfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRCPInterfaceCallback;

    move-result-object v9

    .restart local v9    # "_arg4":Landroid/content/IRCPInterfaceCallback;
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/IRCPInterface$Stub;->moveFiles(ILjava/util/List;ILjava/util/List;Landroid/content/IRCPInterfaceCallback;)J

    move-result-wide v24

    .restart local v24    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    goto :goto_0

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "_arg4":Landroid/content/IRCPInterfaceCallback;
    .end local v24    # "_result":J
    :sswitch_3
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .local v21, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v6, v1}, Landroid/content/IRCPInterface$Stub;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v24

    .restart local v24    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "_result":J
    :sswitch_4
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .local v14, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v7, v14}, Landroid/content/IRCPInterface$Stub;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v24

    .local v24, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v24    # "_result":I
    :sswitch_5
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v7, v14}, Landroid/content/IRCPInterface$Stub;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v24

    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v24    # "_result":I
    :sswitch_6
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/IRCPInterface$Stub;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v24

    .local v24, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v24    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/IRCPInterface$Stub;->isFileExist(Ljava/lang/String;I)Z

    move-result v24

    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v24    # "_result":Z
    :sswitch_8
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/IRCPInterface$Stub;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v26

    .local v26, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v26    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/IRCPInterface$Stub;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v24

    .local v24, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v24    # "_result":Landroid/os/Bundle;
    :sswitch_a
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .local v15, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .local v18, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v20, 0x1

    .local v20, "_arg7":Z
    :goto_3
    move-object/from16 v10, p0

    move v11, v5

    move v13, v7

    invoke-virtual/range {v10 .. v20}, Landroid/content/IRCPInterface$Stub;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v24

    .local v24, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v20    # "_arg7":Z
    .end local v24    # "_result":I
    :cond_2
    const/16 v20, 0x0

    goto :goto_3

    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v15    # "_arg4":J
    .end local v17    # "_arg5":I
    .end local v18    # "_arg6":J
    :sswitch_b
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .local v22, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/IRCPInterface$Stub;->cancelCopyChunks(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v22    # "_arg0":J
    :sswitch_c
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .restart local v22    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/IRCPInterface$Stub;->cancel(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
