.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;
.super Landroid/os/AsyncTask;
.source "QuickSettingUserCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->queryForUserInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/16 v5, 0x13

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sget-object v5, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$500()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v18, 0x0

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const-string v5, "display_name"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v5, "photo_file_id"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-string v5, "photo_id"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    move-wide/from16 v0, v20

    move-wide/from16 v2, v18

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->getContactsPhoto(JJ)Landroid/graphics/Bitmap;
    invoke-static {v5, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;JJ)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v11, v5, v15

    const-string v5, "QuickSettingUserCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryForUserInformation:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " userPhotoID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " userPhotoFileID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/util/Pair;

    move-object/from16 v0, v17

    invoke-direct {v5, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v13

    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v5, "QuickSettingUserCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!!!!access cursor content data fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    throw v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    sget-object v7, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    sput-object v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserName:Ljava/lang/String;

    const/4 v4, 0x0

    sput-object v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserPhoto:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v4, :cond_2

    move-object v4, v5

    :goto_0
    sput-object v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserName:Ljava/lang/String;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    move-object v4, v5

    :goto_1
    sput-object v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserPhoto:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.htc.action.systemui.CONTACT_UPDATE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "QuickSettingUserCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPostExecute.upload:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->imageview:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/TextView;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/String;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->updateUserLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-nez p1, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    const/4 v6, 0x1

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->defaultContent:Z
    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$1102(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/TextView;

    move-result-object v4

    const v6, 0x7f0a00ad

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$1200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->imageview:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/ImageView;

    move-result-object v4

    const v6, 0x7f02019f

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v4, "QuickSettingUserCard"

    const-string v6, "onPostExecute:handle fail to query database case"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_2

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_5
    :try_start_3
    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    const/4 v6, 0x0

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->defaultContent:Z
    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$1102(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;Z)Z

    :goto_3
    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->imageview:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v4, "QuickSettingUserCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPostExecute.update:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto/16 :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$1300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    const/4 v6, 0x1

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->defaultContent:Z
    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$1102(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$1400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->textview:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/TextView;

    move-result-object v4

    const v6, 0x7f0a00ad

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->imageview:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/widget/ImageView;

    move-result-object v4

    const v6, 0x7f02019f

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$3;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
