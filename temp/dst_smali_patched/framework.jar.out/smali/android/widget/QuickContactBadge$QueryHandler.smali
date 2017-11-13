.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 21
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v13, 0x0

    .local v13, "lookupUri":Landroid/net/Uri;
    const/4 v5, 0x0

    .local v5, "createUri":Landroid/net/Uri;
    const/4 v15, 0x0

    .local v15, "trigger":Z
    if-eqz p2, :cond_3

    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object/from16 v9, p2

    .local v9, "extras":Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v0, v13}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static/range {v16 .. v16}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static/range {v16 .. v16}, Landroid/widget/QuickContactBadge;->access$000(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v16

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static/range {v18 .. v18}, Landroid/widget/QuickContactBadge;->access$000(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/QuickContactBadge;->mPrioritizedMimeType:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/widget/QuickContactBadge;->access$200(Landroid/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v16 .. v20}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    .end local v9    # "extras":Landroid/os/Bundle;
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_3
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .end local p2    # "cookie":Ljava/lang/Object;
    .restart local v9    # "extras":Landroid/os/Bundle;
    :pswitch_0
    const/4 v15, 0x1

    if-eqz v9, :cond_4

    if-eqz v9, :cond_5

    :try_start_0
    const-string v16, "uri_content"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_5

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    const-string v16, "tel"

    const-string v17, "uri_content"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .local v6, "contactId":J
    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "lookupKey":Ljava/lang/String;
    invoke-static {v6, v7, v12}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    goto/16 :goto_1

    .end local v6    # "contactId":J
    .end local v12    # "lookupKey":Ljava/lang/String;
    :pswitch_2
    const/4 v15, 0x1

    const-string v16, "mailto"

    const-string v17, "uri_content"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .restart local v6    # "contactId":J
    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "lookupKey":Ljava/lang/String;
    invoke-static {v6, v7, v12}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    goto/16 :goto_1

    .end local v6    # "contactId":J
    .end local v12    # "lookupKey":Ljava/lang/String;
    :catchall_0
    move-exception v16

    if-eqz p3, :cond_6

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v16

    :cond_7
    if-eqz v5, :cond_2

    new-instance v10, Landroid/content/Intent;

    const-string v16, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    move-object/from16 v0, v16

    invoke-direct {v10, v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v10, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Landroid/widget/QuickContactBadge;->access$300(Landroid/widget/QuickContactBadge;)Landroid/content/Context;

    move-result-object v16

    const-string v17, "android.permission.GET_TASKS"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v14

    .local v14, "permissionResult":I
    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Landroid/widget/QuickContactBadge;->access$400(Landroid/widget/QuickContactBadge;)Landroid/content/Context;

    move-result-object v16

    const-string v17, "activity"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .local v4, "am":Landroid/app/ActivityManager;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "PackageName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "ReplacedPackageName":Ljava/lang/String;
    const-string v16, "com.android.contacts"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_8

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .end local v2    # "PackageName":Ljava/lang/String;
    .end local v3    # "ReplacedPackageName":Ljava/lang/String;
    .end local v4    # "am":Landroid/app/ActivityManager;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v14    # "permissionResult":I
    :cond_8
    if-eqz v9, :cond_9

    const-string v16, "uri_content"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v8

    .local v8, "e":Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x104026e

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
