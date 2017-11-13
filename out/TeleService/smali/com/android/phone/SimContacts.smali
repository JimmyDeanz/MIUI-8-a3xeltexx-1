.class public Lcom/android/phone/SimContacts;
.super Lcom/android/phone/ADNList;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimContacts$ImportAllSimContactsThread;,
        Lcom/android/phone/SimContacts$NamePhoneTypePair;
    }
.end annotation


# static fields
.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/phone/SimContacts;->sEmptyContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SimContacts;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SimContacts;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 0
    .param p0, "x0"    # Landroid/database/Cursor;
    .param p1, "x1"    # Landroid/content/ContentResolver;
    .param p2, "x2"    # Landroid/accounts/Account;

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SimContacts;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 20
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 137
    new-instance v11, Lcom/android/phone/SimContacts$NamePhoneTypePair;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lcom/android/phone/SimContacts$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 139
    .local v11, "namePhoneTypePair":Lcom/android/phone/SimContacts$NamePhoneTypePair;
    iget-object v10, v11, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 140
    .local v10, "name":Ljava/lang/String;
    iget v14, v11, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    .line 141
    .local v14, "phoneType":I
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 142
    .local v13, "phoneNumber":Ljava/lang/String;
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "emailAddresses":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 145
    const-string v15, ","

    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "emailAddressArray":[Ljava/lang/String;
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v12, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v15, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 154
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    const/4 v9, 0x0

    .line 155
    .local v9, "myGroupsId":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 156
    const-string v15, "account_name"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 157
    const-string v15, "account_type"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 161
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 164
    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 165
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/name"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 166
    const-string v15, "data1"

    invoke-virtual {v2, v15, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 167
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 170
    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 171
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 172
    const-string v15, "data2"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 173
    const-string v15, "data1"

    invoke-virtual {v2, v15, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 174
    const-string v15, "is_primary"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 175
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    if-eqz v6, :cond_2

    .line 178
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_2

    aget-object v4, v1, v7

    .line 179
    .local v4, "emailAddress":Ljava/lang/String;
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 180
    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 181
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 182
    const-string v15, "data2"

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 183
    const-string v15, "data1"

    invoke-virtual {v2, v15, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 184
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 147
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v4    # "emailAddress":Ljava/lang/String;
    .end local v5    # "emailAddressArray":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "myGroupsId":Ljava/lang/String;
    .end local v12    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "emailAddressArray":[Ljava/lang/String;
    goto/16 :goto_0

    .line 159
    .restart local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v9    # "myGroupsId":Ljava/lang/String;
    .restart local v12    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    sget-object v15, Lcom/android/phone/SimContacts;->sEmptyContentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 188
    :cond_2
    if-eqz v9, :cond_3

    .line 189
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 190
    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 191
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 192
    const-string v15, "group_sourceid"

    invoke-virtual {v2, v15, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 193
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_3
    :try_start_0
    const-string v15, "com.android.contacts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :goto_3
    return-void

    .line 198
    :catch_0
    move-exception v3

    .line 199
    .local v3, "e":Landroid/os/RemoteException;
    const-string v15, "SimContacts"

    const-string v16, "%s: %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 200
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 201
    .local v3, "e":Landroid/content/OperationApplicationException;
    const-string v15, "SimContacts"

    const-string v16, "%s: %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v3}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private importOneSimContact(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 207
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    invoke-static {v1, v0, v2}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v1, "SimContacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move the cursor to the position \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected newAdapter()Landroid/widget/CursorAdapter;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 240
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f040027

    iget-object v3, p0, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v6

    new-array v5, v5, [I

    const v1, 0x1020014

    aput v1, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 324
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 317
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 318
    .local v0, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    instance-of v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 319
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local v0    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 320
    .local v1, "position":I
    invoke-direct {p0, v1}, Lcom/android/phone/SimContacts;->importOneSimContact(I)V

    .line 321
    const/4 v2, 0x1

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreate(Landroid/os/Bundle;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 221
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 222
    const-string v4, "account_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "accountName":Ljava/lang/String;
    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "accountType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 225
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    .line 229
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/SimContacts;->registerForContextMenu(Landroid/view/View;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 232
    .local v2, "actionBar":Landroid/app/ActionBar;
    if-eqz v2, :cond_1

    .line 234
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 236
    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x0

    .line 330
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_1

    move-object v0, p3

    .line 331
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 333
    .local v0, "itemInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 334
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 337
    :cond_0
    const/4 v2, 0x1

    const v3, 0x7f080240

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 339
    .end local v0    # "itemInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 265
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 266
    const/4 v0, 0x2

    const v1, 0x7f080241

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 348
    packed-switch p1, :pswitch_data_0

    .line 367
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/ADNList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    .line 350
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "phoneNumber":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 359
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10800000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->startActivity(Landroid/content/Intent;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->finish()V

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 343
    invoke-direct {p0, p3}, Lcom/android/phone/SimContacts;->importOneSimContact(I)V

    .line 344
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 281
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 310
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_1
    return v3

    .line 283
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->onBackPressed()V

    goto :goto_1

    .line 286
    :sswitch_1
    const v4, 0x7f080241

    invoke-virtual {p0, v4}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "title":Ljava/lang/CharSequence;
    const v4, 0x7f080242

    invoke-virtual {p0, v4}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "message":Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    invoke-direct {v1, p0}, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;-><init>(Lcom/android/phone/SimContacts;)V

    .line 292
    .local v1, "thread":Lcom/android/phone/SimContacts$ImportAllSimContactsThread;
    iget-object v4, p0, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_0

    .line 293
    const-string v3, "SimContacts"

    const-string v4, "cursor is null. Ignore silently."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_0
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 297
    iget-object v4, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v4, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v4, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 300
    iget-object v4, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v5, -0x2

    const v6, 0x7f0800c0

    invoke-virtual {p0, v6}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 302
    iget-object v4, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 303
    iget-object v4, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 304
    iget-object v4, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 306
    invoke-virtual {v1}, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->start()V

    goto :goto_1

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 272
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 273
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 276
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 274
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 246
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    .line 248
    .local v1, "subId":I
    const-string v2, "subscription_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const-string v2, "subscription_id"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 251
    :cond_0
    if-eq v1, v3, :cond_2

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://icc/adn/subId/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 256
    :goto_0
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    const-string v2, "index"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/phone/SimContacts;->mInitialSelection:I

    .line 260
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 254
    :cond_2
    const-string v2, "content://icc/adn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method
