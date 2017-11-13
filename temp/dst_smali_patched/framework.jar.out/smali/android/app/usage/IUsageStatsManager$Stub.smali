.class public abstract Landroid/app/usage/IUsageStatsManager$Stub;
.super Landroid/os/Binder;
.source "IUsageStatsManager.java"

# interfaces
.implements Landroid/app/usage/IUsageStatsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/IUsageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IUsageStatsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.usage.IUsageStatsManager"

.field static final TRANSACTION_isAppInactive:I = 0x6

.field static final TRANSACTION_queryConfigurationStats:I = 0x3

.field static final TRANSACTION_queryEvents:I = 0x4

.field static final TRANSACTION_queryStatsCustomized:I = 0xa

.field static final TRANSACTION_queryUsageStats:I = 0x1

.field static final TRANSACTION_queryUsageStatsForUser:I = 0x2

.field static final TRANSACTION_registerUsageStatsWatcher:I = 0x8

.field static final TRANSACTION_setAppInactive:I = 0x5

.field static final TRANSACTION_unregisterUsageStatsWatcher:I = 0x9

.field static final TRANSACTION_whitelistAppTemporarily:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.usage.IUsageStatsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/usage/IUsageStatsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.app.usage.IUsageStatsManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/usage/IUsageStatsManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/usage/IUsageStatsManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
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

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/usage/IUsageStatsManager$Stub;->queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v23

    .local v23, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .local v14, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "_arg4":Ljava/lang/String;
    move-object/from16 v9, p0

    move v10, v3

    move v11, v4

    move-wide v12, v6

    invoke-virtual/range {v9 .. v16}, Landroid/app/usage/IUsageStatsManager$Stub;->queryUsageStatsForUser(IIJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v23

    .restart local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":J
    .end local v14    # "_arg3":J
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_3
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/usage/IUsageStatsManager$Stub;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v23

    .restart local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_4
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .local v18, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .restart local v4    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v17, p0

    move-wide/from16 v20, v4

    move-object/from16 v22, v6

    invoke-virtual/range {v17 .. v22}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v23

    .local v23, "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/app/usage/UsageEvents;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg0":J
    .end local v23    # "_result":Landroid/app/usage/UsageEvents;
    :sswitch_5
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    .local v4, "_arg1":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppInactive(Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/usage/IUsageStatsManager$Stub;->isAppInactive(Ljava/lang/String;I)Z

    move-result v23

    .local v23, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v23    # "_result":Z
    :sswitch_7
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/usage/IUsageStatsManager$Stub;->whitelistAppTemporarily(Ljava/lang/String;JI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":I
    :sswitch_8
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/usage/IUsageStatsWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsWatcher;

    move-result-object v3

    .local v3, "_arg0":Landroid/app/usage/IUsageStatsWatcher;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->registerUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/app/usage/IUsageStatsWatcher;
    :sswitch_9
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/usage/IUsageStatsWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsWatcher;

    move-result-object v3

    .restart local v3    # "_arg0":Landroid/app/usage/IUsageStatsWatcher;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/app/usage/IUsageStatsWatcher;
    :sswitch_a
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .restart local v18    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .restart local v4    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v17, p0

    move-wide/from16 v20, v4

    move-object/from16 v22, v6

    invoke-virtual/range {v17 .. v22}, Landroid/app/usage/IUsageStatsManager$Stub;->queryStatsCustomized(JJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v23

    .local v23, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
