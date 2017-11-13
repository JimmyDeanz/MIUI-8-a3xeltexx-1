.class public abstract Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityInteractionConnection"

.field static final TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x1

.field static final TRANSACTION_findAccessibilityNodeInfosByText:I = 0x5

.field static final TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x4

.field static final TRANSACTION_findFocus:I = 0x6

.field static final TRANSACTION_focusSearch:I = 0x7

.field static final TRANSACTION_getFragmentBoundsOnTopActivityByAccessibilityId:I = 0x2

.field static final TRANSACTION_isTopActivityCoveredByAccessibilityId:I = 0x3

.field static final TRANSACTION_performAccessibilityAction:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 33
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 275
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 48
    :sswitch_0
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x1

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 57
    .local v3, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Region;

    .line 64
    .local v5, "_arg1":Landroid/graphics/Region;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 66
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v7

    .line 68
    .local v7, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 70
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 72
    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 74
    .local v10, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/MagnificationSpec;

    .local v12, "_arg7":Landroid/view/MagnificationSpec;
    :goto_2
    move-object/from16 v2, p0

    .line 80
    invoke-virtual/range {v2 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 81
    const/4 v2, 0x1

    goto :goto_0

    .line 61
    .end local v5    # "_arg1":Landroid/graphics/Region;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":J
    .end local v12    # "_arg7":Landroid/view/MagnificationSpec;
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/graphics/Region;
    goto :goto_1

    .line 78
    .restart local v6    # "_arg2":I
    .restart local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v8    # "_arg4":I
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":J
    :cond_1
    const/4 v12, 0x0

    .restart local v12    # "_arg7":Landroid/view/MagnificationSpec;
    goto :goto_2

    .line 85
    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":Landroid/graphics/Region;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":J
    .end local v12    # "_arg7":Landroid/view/MagnificationSpec;
    :sswitch_2
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 91
    .local v5, "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 93
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .local v18, "_arg3":J
    move-object/from16 v14, p0

    move v15, v3

    move-object/from16 v16, v5

    move/from16 v17, v6

    .line 94
    invoke-virtual/range {v14 .. v19}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getFragmentBoundsOnTopActivityByAccessibilityId(ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V

    .line 95
    const/4 v2, 0x1

    goto :goto_0

    .line 99
    .end local v3    # "_arg0":I
    .end local v5    # "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6    # "_arg2":I
    .end local v18    # "_arg3":J
    :sswitch_3
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 103
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 105
    .restart local v5    # "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 107
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .restart local v18    # "_arg3":J
    move-object/from16 v14, p0

    move v15, v3

    move-object/from16 v16, v5

    move/from16 v17, v6

    .line 108
    invoke-virtual/range {v14 .. v19}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->isTopActivityCoveredByAccessibilityId(ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V

    .line 109
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 113
    .end local v3    # "_arg0":I
    .end local v5    # "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6    # "_arg2":I
    .end local v18    # "_arg3":J
    :sswitch_4
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 117
    .local v3, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    .line 126
    .local v6, "_arg2":Landroid/graphics/Region;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 128
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 130
    .local v8, "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 132
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 134
    .local v10, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 136
    .local v30, "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/MagnificationSpec;

    .local v32, "_arg8":Landroid/view/MagnificationSpec;
    :goto_4
    move-object/from16 v21, p0

    move-wide/from16 v22, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    .line 142
    invoke-virtual/range {v21 .. v32}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 143
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 123
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v30    # "_arg7":J
    .end local v32    # "_arg8":Landroid/view/MagnificationSpec;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    goto :goto_3

    .line 140
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":I
    .restart local v30    # "_arg7":J
    :cond_3
    const/16 v32, 0x0

    .restart local v32    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_4

    .line 147
    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v30    # "_arg7":J
    .end local v32    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_5
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 151
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 153
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    .line 160
    .restart local v6    # "_arg2":Landroid/graphics/Region;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 162
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 164
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 166
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 168
    .restart local v10    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 170
    .restart local v30    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 171
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/MagnificationSpec;

    .restart local v32    # "_arg8":Landroid/view/MagnificationSpec;
    :goto_6
    move-object/from16 v21, p0

    move-wide/from16 v22, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    .line 176
    invoke-virtual/range {v21 .. v32}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 177
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 157
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v30    # "_arg7":J
    .end local v32    # "_arg8":Landroid/view/MagnificationSpec;
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    goto :goto_5

    .line 174
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":I
    .restart local v30    # "_arg7":J
    :cond_5
    const/16 v32, 0x0

    .restart local v32    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_6

    .line 181
    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v30    # "_arg7":J
    .end local v32    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_6
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 185
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 187
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 188
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    .line 194
    .restart local v6    # "_arg2":Landroid/graphics/Region;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 196
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 198
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 200
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 202
    .restart local v10    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 204
    .restart local v30    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 205
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/MagnificationSpec;

    .restart local v32    # "_arg8":Landroid/view/MagnificationSpec;
    :goto_8
    move-object/from16 v21, p0

    move-wide/from16 v22, v3

    move/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    .line 210
    invoke-virtual/range {v21 .. v32}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 211
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 191
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v30    # "_arg7":J
    .end local v32    # "_arg8":Landroid/view/MagnificationSpec;
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    goto :goto_7

    .line 208
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":I
    .restart local v30    # "_arg7":J
    :cond_7
    const/16 v32, 0x0

    .restart local v32    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_8

    .line 215
    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v30    # "_arg7":J
    .end local v32    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_7
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 219
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 221
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 222
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    .line 228
    .restart local v6    # "_arg2":Landroid/graphics/Region;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 230
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 232
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 234
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 236
    .restart local v10    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 238
    .restart local v30    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 239
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/MagnificationSpec;

    .restart local v32    # "_arg8":Landroid/view/MagnificationSpec;
    :goto_a
    move-object/from16 v21, p0

    move-wide/from16 v22, v3

    move/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    .line 244
    invoke-virtual/range {v21 .. v32}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 245
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 225
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v30    # "_arg7":J
    .end local v32    # "_arg8":Landroid/view/MagnificationSpec;
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    goto :goto_9

    .line 242
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":I
    .restart local v30    # "_arg7":J
    :cond_9
    const/16 v32, 0x0

    .restart local v32    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_a

    .line 249
    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v30    # "_arg7":J
    .end local v32    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_8
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 253
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 255
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 256
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 262
    .local v6, "_arg2":Landroid/os/Bundle;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 264
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 266
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 268
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 270
    .restart local v10    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .restart local v30    # "_arg7":J
    move-object/from16 v21, p0

    move-wide/from16 v22, v3

    move/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    .line 271
    invoke-virtual/range {v21 .. v31}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 272
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 259
    .end local v6    # "_arg2":Landroid/os/Bundle;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v30    # "_arg7":J
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/os/Bundle;
    goto :goto_b

    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
